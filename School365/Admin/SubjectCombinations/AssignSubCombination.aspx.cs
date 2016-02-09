using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin.SubjectCombinations
{
    public partial class AssignSubCombination : System.Web.UI.Page
    {
        StudentModel db = new StudentModel();
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SubComb.DataSource = (from d in db.SubjectCombinations select new { d.SubjectCombinName, d.SubjectCombinID }).Distinct().ToList();
                SubComb.DataTextField = "SubjectCombinName";
                SubComb.DataValueField = "SubjectCombinID";
                DataBind();

               Dept.DataSource = (from g in db.Departments select new { g.DepartmantID, g.DepartmentCode }).Distinct().ToList();
               Dept.DataTextField = "DepartmentCode";
               Dept.DataValueField = "DepartmantID";
               DataBind();

               var setSubjects = (from d in db.Subjects select new { d.SubjectID, d.SubjectName, d.SubjectLevel }).Distinct().ToList();
               allSubjects.DataSource = setSubjects.ToList();
               DataBind();
            }            
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in allSubjects.Rows)
            {
                if ((row.Cells[0].FindControl("Crs") as CheckBox).Checked)
                {
                    var InsertAllCombined = new AllCombined
                    {
                        SubjectCombineID = int.Parse(SubComb.SelectedItem.Value),
                        SubjectID = int.Parse(row.Cells[1].Text),
                        DepartmentID = int.Parse(Dept.SelectedItem.Value)
                    };
                    db.AllCombineds.Add(InsertAllCombined);
                    db.SaveChanges();
                }
            }

            foreach (GridViewRow item in allSubjects.Rows)
            {
                if ((item.Cells[0].FindControl("Crs") as CheckBox).Checked == true)
                {
                    (item.Cells[0].FindControl("Crs") as CheckBox).Checked = false;
                }
            }
        }

      
         
    }
}