using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin.Departments
{
    public partial class AddDepartments : System.Web.UI.Page
    {
        StudentModel db = new StudentModel();
        Model.Faculty faculty = new Model.Faculty();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {             
                AllFaculty.DataSource = (from c in db.Facultys select new { c.FacultyID, c.FacultyCode }).Distinct().ToList();
                AllFaculty.DataTextField = "FacultyCode";
                AllFaculty.DataValueField = "FacultyID";
                DataBind();               
            }

        }

        protected void InsertBtn_Click(object sender, EventArgs e)
        {
            var InsertDepartment = new Department
            {
                DepartmentCode = deptCode.Text.ToUpper(),
                DepartmentName = deptName.Text.ToUpper(),
                FacultyID =AllFaculty.SelectedItem.Value,
            };
            db.Departments.Add(InsertDepartment);
            db.SaveChanges();
            Response.Write("Data Inserted");
            deptCode.Text = "";
            deptName.Text = "";
        }
    }
}