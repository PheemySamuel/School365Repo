using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin.Administrator
{
    public partial class Login : System.Web.UI.Page
    {
        StudentModel db = new StudentModel();
        private Model.Admin AdminAuth;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            AdminAuth = (db.Admin.Where(u => u.Username == invoiceNum.Text && u.Password == pin.Text).Count() > 0) ? db.Admin.FirstOrDefault(u => u.Username == invoiceNum.Text && u.Password == pin.Text) : null;

            if (AdminAuth == null)
            {
                errorDisplay.Text = "Username or Password is incorrect";
            }
            else
            {
                string parameter = "grab=" + AdminAuth.AdminID;
                Response.Redirect("Profile.aspx?" + parameter);
            }      
        }
    }
}