using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Student
{
    public partial class Login : System.Web.UI.Page
    {
        StudentModel db = new StudentModel();
        private Model.Student StudentAuth;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            StudentAuth = (db.Students.Where(u => u.InvoiceNumber == invoiceNum.Text && u.Password == pin.Text).Count() > 0) ? db.Students.FirstOrDefault(u => u.InvoiceNumber == invoiceNum.Text && u.Password == pin.Text) : null;

            if (StudentAuth==null)
            {
                errorDisplay.Text = "Username or Password is incorrect";
            }
            else
            {
                string parameter ="grab="+StudentAuth.StudentKey;
                Response.Redirect("Profile.aspx?"+parameter);
            }           
        }
    }
}