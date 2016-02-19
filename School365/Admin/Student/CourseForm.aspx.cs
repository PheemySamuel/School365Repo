using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin.Student
{
    public partial class CourseForm : System.Web.UI.Page
    {
        public StudentModel db = new StudentModel();       
        //string value = "ce7fe935-2b79-4a48-b637-48618a7f708c";
        public List<int> StudentID = new List<int>();
        public int sn = 0;
        public double totalUnit = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var getSession = (from d in db.Sessions select d).ToList();
                allSession.DataTextField="SessionYear";
                allSession.DataValueField = "SessionID";
                allSession.DataSource = getSession;
                allSession.DataBind();
            }
        }

        protected void getSubjects_Click(object sender, EventArgs e)
        {
            StudentID=(from d in db.Results where d.MatricNo.Trim()==MatricNo.Text.Trim() && d.SessionID.ToString()==allSession.SelectedItem.Value select d.StudentID).ToList();
            SessionYear.Text = allSession.SelectedItem.Text;
            allSession.Visible = false;
            getSubjects.Visible = false;
            MatricNo.Visible = false;
         //   StudentID = (from d in db.Students where d.MatricNo.Trim() == MatricNo.Text.Trim() join f in db.Results on d.StudentID equals f.StudentID select d.StudentID).ToList();              
        }
    }
}