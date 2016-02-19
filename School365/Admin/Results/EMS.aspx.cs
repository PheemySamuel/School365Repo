using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin.Results
{
    public partial class EMS : System.Web.UI.Page
    {
        public StudentModel db = new StudentModel();
        public List<String> AllStudentsMatric = new List<String>();
        public int SerialValue = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void getAllStudent_Click(object sender, EventArgs e)
        {
            AllStudentsMatric = (from d in db.Subjects where d.SubjectCode.Trim() == subCode.Text.Trim() && d.SubjectLevel == level.SelectedItem.Text join f in db.Results on d.SubjectID equals f.SubjectID select f.MatricNo).OrderBy(a => a).ToList();
            subCode.Visible = false;
            level.Visible = false;
            getAllStudent.Visible = false;
        }
    }
}