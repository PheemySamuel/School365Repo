using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin.SubjectCombinations
{
    public partial class AddSubCombination : System.Web.UI.Page
    {
        StudentModel db = new StudentModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            //try to uncheck ahter submitting
            if (!IsPostBack)
            {
                major.DataSource = (from d in db.Departments select new { d.DepartmentName, d.DepartmentCode }).Distinct().ToList();
                major.DataTextField = "DepartmentName";
                major.DataValueField = "DepartmentCode";
                DataBind();

                minor.DataSource = (from g in db.Departments select new { g.DepartmentName, g.DepartmentCode }).Distinct().ToList();
                minor.DataTextField = "DepartmentName";
                minor.DataValueField = "DepartmentCode";
                DataBind();                
            }
           

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string subcomb = major.SelectedItem.Value + "/" + minor.SelectedItem.Value;
            var InsertSubComb = new SubjectCombination
            {
                SubjectCombinName = subcomb
            };
            db.SubjectCombinations.Add(InsertSubComb);
            db.SaveChanges();
            Response.Write("Inserted");

           
        }
    }
}