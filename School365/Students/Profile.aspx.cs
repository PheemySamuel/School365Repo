using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Students
{
    public partial class Profile : System.Web.UI.Page
    {
       public string value = "";
       StudentModel db = new StudentModel();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                value = Request.QueryString["grab"].ToString();
                var getStudentDetail = (from d in db.Students where d.StudentKey==value select d).FirstOrDefault();
                StudentDetails.Text = getStudentDetail.Surname.ToUpperInvariant() + " " + getStudentDetail.Firstname + " " + getStudentDetail.Middlename;
                course.Text = getStudentDetail.Major.ToUpper() + "/" + getStudentDetail.Minor.ToUpper();
                email.Text = getStudentDetail.Email.ToLower();
                phone.Text = getStudentDetail.PhoneNumber;
                if (getStudentDetail.ImageName==null)
                {
                    studentImage.ImageUrl = "~/Image/studentGuy.png";
                }
                else
                {                    
                    studentImage.ImageUrl = "data:image/jpeg;base64,"+ Convert.ToBase64String(getStudentDetail.StudentImage);
                }
            } 
            //Response.Write(value);
        }
    }
}