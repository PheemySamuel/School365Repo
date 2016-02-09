using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Students
{
    public partial class Register : System.Web.UI.Page
    {
        
        StudentModel db = new StudentModel();
        public string value = "";
        static int StudentID = 0;
        static int SubCombID = 0;
        static double Level = 0;
        static int FacultyID = 0;
       // static int getSessionID = 0;
        double gettotalTNU = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                string Major = "";
                string Minor = "";
                string subComb = "";                             
                value = Request.QueryString["grab"].ToString();              
                    var getValues = (from d in db.Students where d.StudentKey == value select new { d.Major, d.Minor, d.StudentID, d.Level,d.Registered }).First();
                    Major = getValues.Major;
                    Minor = getValues.Minor;
                    Level = getValues.Level;
                    //FacultyID = getValues.FacultyID;
                    StudentID = getValues.StudentID;
                    subComb = Major + "/" + Minor;
                    //if (getValues.Registered==null || getValues.Registered=="False")
                    //{
                    //    allSubject.Visible = false;
                    //    submit.Visible = false;
                    //}

                    var getSubCombID = (from d in db.SubjectCombinations where d.SubjectCombinName == subComb select d.SubjectCombinID).First();
                    //Trying to access it below for button
                    SubCombID = getSubCombID;
                    var getAllSubject = from a in db.AllCombineds
                                        where a.SubjectCombineID == getSubCombID
                                        join j in db.SubjectCombinations on a.SubjectCombineID equals j.SubjectCombinID
                                        join d in db.Departments on a.DepartmentID equals d.DepartmantID
                                        join h in db.Subjects on a.SubjectID equals h.SubjectID
                                        select new { j.SubjectCombinID, j.SubjectCombinName, d.DepartmantID, d.DepartmentName, h.SubjectID, h.SubjectName, h.SubjectValue, h.SubjectUnit, h.SubjectLevel };
                    var getSubjectbyLevel = from d in getAllSubject where d.SubjectLevel == getValues.Level.ToString() select d;
                    allSubject.DataSource = getSubjectbyLevel.ToList();
                    allSubject.DataBind();

                    
                             
            }            
        }
        protected void submit_Click(object sender, EventArgs e)
        {
            int getSessionID = (from d in db.Sessions where d.CurrentSession == true select d.SessionID).FirstOrDefault();
            foreach (GridViewRow rows in allSubject.Rows)
            {
                if ((rows.Cells[0].FindControl("Crs") as CheckBox).Checked)
                {
                    gettotalTNU += double.Parse(rows.Cells[7].Text);
                }
            }
            if (gettotalTNU<=100)
            {
                foreach (GridViewRow rows in allSubject.Rows)
                {
                    if ((rows.Cells[0].FindControl("Crs") as CheckBox).Checked)
                    {                    
                        var InsertResult = new Result
                        {
                            StudentID = StudentID,
                            SubjectCombinID = int.Parse(rows.Cells[5].Text),
                            DepartmentID = int.Parse(rows.Cells[1].Text),
                            SubjectID = int.Parse(rows.Cells[3].Text),
                            Level = Level,
                            //FacultyID = FacultyID,
                            TNU = double.Parse(rows.Cells[7].Text),
                            SessionID = getSessionID,
                        };
                        db.Results.Add(InsertResult);
                        db.SaveChanges();

                        
                        allSubject.Visible = false;                       
                    }
                }
                var getDeptID = (from d in db.Results select d.DepartmentID).Distinct().ToList();
                foreach (var setDeptID in getDeptID)
                {
                    double[] numbers = (from s in db.Results where s.DepartmentID == setDeptID && s.StudentID==StudentID select s.TNU).ToArray();
                    var InsertDb = (from d in db.Results where d.StudentID == StudentID && d.DepartmentID == setDeptID select d).ToList();
                    foreach (var InsertTNU in InsertDb)
                    {
                        InsertTNU.TNU = numbers.Aggregate(0.00, (seed, n) => seed + n);
                        db.SaveChanges();                       
                    }
                   
                }
                var UpdateStudent = (from d in db.Students where d.StudentID == StudentID select d).FirstOrDefault();
                UpdateStudent.Registered = "True"; 
            }
            else
            {
                Response.Write("EXCEEDED YOUR UNIT");
            }                   
        }
    }
}