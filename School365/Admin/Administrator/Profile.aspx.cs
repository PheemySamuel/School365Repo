using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin.Administrator
{
    public partial class Profile : System.Web.UI.Page
    {
        StudentModel db = new StudentModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            int getSessionID = (from d in db.Sessions where d.CurrentSession == true select d.SessionID).First();
            int getTotalStundents = (from d in db.Results where d.SessionID == getSessionID select d.MatricNo).Distinct().Count();
            int getDepartments = (from d in db.Departments select d.DepartmantID).Distinct().Count();
            int getFaculty = (from d in db.Facultys select d.FacultyID).Distinct().Count();
            int getCourses = (from d in db.Subjects select d.SubjectID).Distinct().Count();
            int getAdmin = (from d in db.Admin select d.AdminID).Distinct().Count();

            StudentNo.Text=getTotalStundents.ToString();
            department.Text = getDepartments.ToString();
            faculty.Text = getFaculty.ToString();
            courses.Text = getFaculty.ToString();
            Admin.Text = getAdmin.ToString();


        }
    }
}