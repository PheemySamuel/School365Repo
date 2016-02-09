using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin.Student
{
    public partial class Register : System.Web.UI.Page
    {
        StudentModel db = new StudentModel();
        string InvoiceNumber = "";
        string StudentKey = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                try
                {

                    InvoiceNumber = Guid.NewGuid().ToString().Substring(0, new Guid().ToString().IndexOf("-"));
                    StudentKey = System.Guid.NewGuid().ToString();

                    major.DataSource = (from d in db.Departments select new { d.DepartmentName, d.DepartmentCode }).Distinct().ToList();
                    major.DataTextField = "DepartmentName";
                    major.DataValueField = "DepartmentCode";
                    DataBind();

                    minor.DataSource = (from g in db.Departments select new { g.DepartmentName, g.DepartmentCode }).Distinct().ToList();
                    minor.DataTextField = "DepartmentName";
                    minor.DataValueField = "DepartmentCode";
                    DataBind();

                    school.DataSource = (from c in db.Facultys select new { c.FacultyID, c.FacultyCode }).Distinct().ToList();
                    school.DataTextField = "FacultyCode";
                    school.DataValueField = "FacultyID";
                    DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }


            }

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                var InsertResult = new Model.Student
                {
                    // DateEntered=DateTime.Now,
                    StudentKey = System.Guid.NewGuid().ToString(),
                    Firstname = firstname.Text.ToUpper(),
                    Surname = surname.Text.ToUpper(),
                    Middlename = othername.Text.ToUpper(),
                    Nationality = country.SelectedItem.Text.ToUpper(),
                    SOR = sor.SelectedItem.Text.ToUpper(),
                    LGA = lga.Text.ToUpper(),
                    Email = email.Text,
                    PhoneNumber = phoneNumber.Text,
                    Gender = sex.Text.ToUpper(),
                    FacultyName = school.SelectedItem.Text,
                    Major = major.SelectedItem.Value,
                    Minor = minor.SelectedItem.Value,
                    Level = 100,
                    InvoiceNumber = Guid.NewGuid().ToString().Substring(0, new Guid().ToString().IndexOf("-")),
                };
                db.Students.Add(InsertResult);
                db.SaveChanges();
                string parameters = "grab="+ StudentKey;
                //string parameters = "surname=" + surname.Text + "&firstname=" + firstname.Text + "&othernames=" + othername.Text + "&SOR=" + sor.SelectedItem.Text + "&LGA=" + lga.Text + "&Nationality=" + country.SelectedItem.Text + "&EmailAdress=" + email.Text + "&PhoneNumber=" + phoneNumber.Text + "&InvoiceNo=" + InvoiceNumber + "&DateEntered=" + DateTime.Now.Year + "&Major=" + major.SelectedItem.Value + "&Minor=" + minor.SelectedItem.Value + "&Gender=" + sex.Text;
                Response.Redirect("../../Students/Register.aspx?"+ parameters);
                firstname.Text = "";
                surname.Text = "";
                othername.Text = "";
                lga.Text = "";
                email.Text = "";
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
           
        }
    }
}