using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Students
{
    public partial class CourseForm : System.Web.UI.Page
    {
        public StudentModel db = new StudentModel();
        string value = "ce7fe935-2b79-4a48-b637-48618a7f708c";
        public List<int> StudentID = new List<int>();
        public int sn = 0;
        public double totalUnit = 0;
      //  public List<Result> result = new List<Result>();
        protected void Page_Load(object sender, EventArgs e)
        {
            StudentID = (from d in db.Students where d.StudentKey == value join f in db.Results on d.StudentID equals f.StudentID select d.StudentID).ToList();              
        }
    }
}