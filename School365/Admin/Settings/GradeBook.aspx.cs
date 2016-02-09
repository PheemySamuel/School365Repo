using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin
{
    public partial class GradeBook : System.Web.UI.Page
    {
        StudentModel db = new StudentModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var getGrades = from d in db.Grades select d;
                allGrades.DataSource = getGrades.ToList();
                allGrades.DataBind();   
            }
                                    
        }

        protected void InsertBtn_Click(object sender, EventArgs e)
        {
            var InsertGrade = new Model.Grade
            {
                Minimum=double.Parse(Minimum.Text),
                Maximum=double.Parse(Maximum.Text),
                Value=int.Parse(Value.Text),
                Name=Name.Text.ToUpper(),              
            };
            db.Grades.Add(InsertGrade);
            db.SaveChanges();
            Response.Write("Data Inserted");
        }
    }
}