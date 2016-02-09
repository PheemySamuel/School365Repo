using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin
{
    public partial class Faculty : System.Web.UI.Page
    {
        StudentModel db;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void InsertBtn_Click(object sender, EventArgs e)
        {
            db = new StudentModel();
            var InsertFaculty = new Model.Faculty
            {                           
                FacultyName = facultyName.Text.ToUpper(),
                FacultyCode = facultyCode.Text.ToUpper(),
            };
            db.Facultys.Add(InsertFaculty);
            db.SaveChanges();
            Response.Write("DATA INSERTED");
            facultyName.Text = "";
            facultyCode.Text = "";
        }
    }
}