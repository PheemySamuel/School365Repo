using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin.Departments
{
    public partial class Edit : System.Web.UI.Page
    {
        StudentModel db = new StudentModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }

        }

        protected void GetStudent_Click(object sender, EventArgs e)
        {
            var getFacultyID = (from d in db.Facultys select d).ToList();
            FacultyDetail.DataValueField = "FacultyID";
            FacultyDetail.DataTextField = "FacultyName";
            FacultyDetail.DataSource = getFacultyID;
            FacultyDetail.DataBind();

            var getDepartment = (from d in db.Departments where d.DepartmentCode.ToUpper().Trim() == DepartmentCode.Text.ToUpper().Trim() 
                                 join  f in db.Facultys on d.FacultyID equals f.FacultyID.ToString()
                                 select new {d.DepartmantID,d.DepartmentCode,d.DepartmentName,f.FacultyName});
            allDepartment.DataSource = getDepartment.ToList();
            allDepartment.DataBind();

        }

        protected void UpdateStudents_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in allDepartment.Rows)
            {
                TextBox DepartmantID = (TextBox)row.FindControl("DepartmantID");
                TextBox DepartmentName = (TextBox)row.FindControl("DepartmentName");
                TextBox DepartmentCode = (TextBox)row.FindControl("DepartmentCode");
                var UpdateDepartment = (from d in db.Departments where d.DepartmantID.ToString() == DepartmantID.Text select d).FirstOrDefault();
                UpdateDepartment.DepartmentCode = DepartmentCode.Text;
                UpdateDepartment.DepartmentName = DepartmentCode.Text;
                UpdateDepartment.FacultyID = FacultyDetail.SelectedItem.Value;
                db.SaveChanges();
            }
        }
    }
}