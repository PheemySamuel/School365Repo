using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin.Student
{
    public partial class ScoreStudent : System.Web.UI.Page
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

            }
        }

        protected void getSubject_Click(object sender, EventArgs e)
        {
            var getSubjects = from d in db.AllCombineds
                              where d.SubjectCombineID.ToString() == SubComb.SelectedItem.Value
                              join f in db.Subjects on d.SubjectID equals f.SubjectID
                              select new { f.SubjectName, f.SubjectID };
            AllSubjects.DataSource = getSubjects.ToList();
            AllSubjects.DataTextField = "SubjectName";
            AllSubjects.DataValueField = "SubjectID";
            DataBind();
        }

        protected void ShowAllSubjects_Click(object sender, EventArgs e)
        {
            var getStudents = from d in db.Results
                              where d.SubjectID.ToString() == AllSubjects.SelectedItem.Value
                              join a in db.Students on d.StudentID equals a.StudentID
                              select new { a.StudentID, a.Firstname, a.Surname, a.MatricNo, d.CA, d.EXAM };
            allStudents.DataSource = getStudents.ToList();
            allStudents.DataBind();
        }
        protected void insertScore_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in allStudents.Rows)
            {
                TextBox CA = (TextBox)row.FindControl("CA");
                TextBox EXAM = (TextBox)row.FindControl("EXAM");
                TextBox id = (TextBox)row.FindControl("StudentID");

                var UpdateResult = (from d in db.Results where d.StudentID.ToString() == id.Text && d.SubjectID.ToString() == AllSubjects.SelectedItem.Value select d).First();
                UpdateResult.CA = double.Parse(CA.Text);
                UpdateResult.EXAM = double.Parse(EXAM.Text);
                db.SaveChanges();
            }

        }


    }
}