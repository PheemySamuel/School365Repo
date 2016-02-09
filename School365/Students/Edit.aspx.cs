using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Students
{
    public partial class Edit : System.Web.UI.Page
    {
        StudentModel db = new StudentModel();
        public static string value = "";
        string FileName = "";
        string StudentImage = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                value = Request.QueryString["grab"].ToString();
                var getStudentDetail = (from d in db.Students where d.StudentKey == value select d).FirstOrDefault();
                FirstName.Text = getStudentDetail.Firstname;
                SurnName.Text = getStudentDetail.Surname;
                MiddleName.Text = getStudentDetail.Middlename;
                sor.SelectedItem.Text = getStudentDetail.SOR;
                country.SelectedItem.Text = getStudentDetail.Nationality;
                Sex.SelectedItem.Text = getStudentDetail.Gender;
                Email.Text = getStudentDetail.Email;
                PhoneNumber.Text = getStudentDetail.PhoneNumber;
                Lga.Text = getStudentDetail.LGA;                
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            var UpdateStudent = (from d in db.Students
                                where d.StudentKey == value
                                select d).FirstOrDefault();
            if (getImage.HasFile !=null && getImage.PostedFile.ContentLength>0)
            {
                FileName = getImage.FileName;
                byte[] ImageValue = getImage.FileBytes;
                UpdateStudent.ImageName = FileName;
                UpdateStudent.StudentImage = ImageValue;
                db.SaveChanges();
            }
            else
            {
                Response.Write("No Image is Selected");
            }
            UpdateStudent.Firstname = FirstName.Text;
            UpdateStudent.Surname = SurnName.Text;
            UpdateStudent.Middlename = MiddleName.Text;
            UpdateStudent.SOR = sor.SelectedItem.Text;
            UpdateStudent.Nationality = country.SelectedItem.Text;
            UpdateStudent.Gender = Sex.SelectedItem.Text;
            UpdateStudent.Email = Email.Text;
            UpdateStudent.PhoneNumber = PhoneNumber.Text;
            UpdateStudent.LGA = Lga.Text;
            db.SaveChanges();
        }
    }
}