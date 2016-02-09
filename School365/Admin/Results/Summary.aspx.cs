using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin.Results
{
    public partial class Mastermarksheet : System.Web.UI.Page
    {
       public StudentModel db = new StudentModel();
        public List<int> getSubjectCombinationID = new List<int>();
        public List<int> getStudentID = new List<int>();
        public List<Result> getAllResult = new List<Result>();
        public List<int> getSubjectID = new List<int>();
        public int serialValue = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string getSubID = Request.QueryString["sumCombID"].ToString();
                int setSubID = int.Parse(getSubID);
                getSubjectID = (from d in db.AllCombineds
                                where d.SubjectCombineID == setSubID
                                join s in db.Subjects on d.SubjectID equals s.SubjectID
                                select s.SubjectID).Distinct().ToList();
                getSubjectCombinationID = (from d in db.AllCombineds where d.SubjectCombineID == setSubID select d.DepartmentID).Distinct().ToList();
                getAllResult = (from h in db.Results where h.SubjectCombinID == setSubID select h).AsEnumerable().ToList();
                getStudentID = (from r in db.Results where r.SubjectCombinID == setSubID select r.StudentID).Distinct().ToList();
                getAllResult = (from h in db.Results where h.SubjectCombinID == setSubID select h).AsEnumerable().ToList();
            }
           
          
        }
    }
}