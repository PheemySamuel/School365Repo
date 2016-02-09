using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin.Student
{
    public partial class AddCourseForRegistered : System.Web.UI.Page
    {
        StudentModel db = new StudentModel(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var getSessionDetail = (from d in db.Sessions select d).Distinct().ToList();
                allSessions.DataTextField = "SessionYear";
                allSessions.DataValueField = "SessionID";
                allSessions.DataSource = getSessionDetail;
                allSessions.DataBind();               
            }
         
        }

        protected void GetStudents_Click(object sender, EventArgs e)
        {
            var getAllSubjects = (from d in db.Results where d.MatricNo.Trim() == MatricNo.Text.Trim() && d.SessionID.ToString() == allSessions.SelectedItem.Value
                                  join f in db.Subjects on d.SubjectID equals f.SubjectID
                                  select new { d.MatricNo,f.SubjectCode,f.SubjectUnit,f.SubjectValue,f.SubjectLevel,d.ResultID}).ToList();
            allSubjects.DataSource = getAllSubjects;
            allSubjects.DataBind();
        }

        protected void DeleteData_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in allSubjects.Rows)
            {
                if ((row.Cells[0].FindControl("Crs") as CheckBox).Checked)
                {
                    int ResultID =int.Parse(row.Cells[1].Text);
                    var Deletestudent = (from d in db.Results where d.MatricNo.Trim() == MatricNo.Text.Trim() && d.SessionID.ToString() == allSessions.SelectedItem.Value && d.ResultID == ResultID select d).First();
                    db.Results.Remove(Deletestudent);
                    db.SaveChanges();
                    // db.Results.RemoveRange(Deletestudent);
                  //  Response.Write(ResultID);
                }
            }
        }
    }
}