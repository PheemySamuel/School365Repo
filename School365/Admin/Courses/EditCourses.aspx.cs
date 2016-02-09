using School365.Model;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin.Courses
{
    public partial class EditCourses : System.Web.UI.Page
    {
        StudentModel db = new StudentModel();
        public List<Subject> subject = new List<Subject>();

        Stopwatch watch = new Stopwatch();     
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GetStudent_Click(object sender, EventArgs e)
        {
            subject = (from d in db.Subjects where d.SubjectCode.Trim() == CourseCode.Text.Trim() select d).ToList();
            allSubjects.DataSource = subject;
            allSubjects.DataBind();
        }


        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
           
            foreach (GridViewRow row in allSubjects.Rows)
            {
                TextBox SubjectID = (TextBox)row.FindControl("SubjectID");                
                TextBox SubjectName = (TextBox)row.FindControl("SubjectName");
                TextBox SubjectCode = (TextBox)row.FindControl("SubjectCode");
                TextBox SubjectValue = (TextBox)row.FindControl("SubjectValue");
                TextBox SubjectUnit = (TextBox)row.FindControl("SubjectUnit");
                TextBox SubjectLevel = (TextBox)row.FindControl("SubjectLevel");
                TextBox Semester = (TextBox)row.FindControl("Semester");
                TextBox Active = (TextBox)row.FindControl("Active");

                var UpdateSubject = db.Subjects.Where(a => a.SubjectID.ToString() == SubjectID.Text.ToString()).First();
                UpdateSubject.SubjectName = SubjectName.Text;
                UpdateSubject.SubjectCode = SubjectCode.Text;
                UpdateSubject.SubjectValue = double.Parse(SubjectValue.Text);
                UpdateSubject.SubjectUnit = SubjectUnit.Text;
                UpdateSubject.SubjectLevel = SubjectLevel.Text;
                UpdateSubject.Semester = Semester.Text;
                if (Active.Text.ToUpper()=="TRUE")
                {
                    UpdateSubject.Active = true;
                }
                else
                {
                    UpdateSubject.Active = false;
                }
                db.SaveChanges();
            }
           
        }

    }
}