using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin.Courses
{
    public partial class AddCourses : System.Web.UI.Page
    {
        StudentModel db;
        Subject sub;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void submit_Click(object sender, EventArgs e)
        {

        }

        protected void insertBtn_Click(object sender, EventArgs e)
        {
            db = new StudentModel();
            bool boolValue = false;
            if (Active.SelectedItem.Text == "TRUE")
            {
                boolValue = true;
            }
            else
            {
                boolValue = false;
            }
            var InsertSubject = new Subject
              {
                  SubjectName = SubjectName.Text.ToUpper(),
                  SubjectCode = SubjectCode.Text.ToUpper(),
                  SubjectUnit = SubjectUnit.SelectedItem.Text,
                  SubjectValue = double.Parse(SubjectValue.SelectedItem.Text),
                  Active = boolValue,
                  Semester = Semester.SelectedItem.Text,
                  SubjectLevel = SubjectLevel.SelectedItem.Text,
              };
            db.Subjects.Add(InsertSubject);
            db.SaveChanges();
            Response.Write("INSERTED");
            SubjectName.Text = "";
            SubjectCode.Text = "";
        }
    }
}