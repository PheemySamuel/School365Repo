using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin.Student
{
    public partial class InsertPin : System.Web.UI.Page
    {
        StudentModel db = new StudentModel();
        int sn = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var getValue = from d in db.Students select new {d.StudentID, d.Surname, d.Firstname, d.Middlename, d.MatricNo, d.Password,d.InvoiceNumber };
                allStudents.DataSource = getValue.ToList();
                allStudents.DataBind();
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in allStudents.Rows)
            {
                
                TextBox pincode = (TextBox)row.FindControl("Password");
                TextBox id = (TextBox)row.FindControl("StudentID");
                Response.Write(pincode.Text);
                Response.Write(id.Text);

                var UpdatePin = (from d in db.Students where d.StudentID.ToString() == id.Text select d).First();
                UpdatePin.Password = pincode.Text;
                db.SaveChanges();
            }
        }
    }
}