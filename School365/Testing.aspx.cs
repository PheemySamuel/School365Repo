using School365.Model;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365
{
    public partial class Testing : System.Web.UI.Page
    {
        StudentModel db = new StudentModel();
        Stopwatch watch = new Stopwatch();
        public List<string> MatricNo = new List<string>();
        public List<int> getDeptID = new List<int>();
        public List<Model.Result> studentCollection = new List<Model.Result>();
        protected void Page_Load(object sender, EventArgs e)
        {
            watch.Start();
            var studentCollection = (from d in db.Results select d).ToList();
            var subjectCollection = (from d in db.Subjects select d).ToList();
            var departmentCollection = (from d in db.Departments select d).ToList();

            MatricNo = (from d in studentCollection select d.MatricNo).Distinct().ToList();
            foreach (string allStudentMatric in MatricNo)
            {
                double ta, ca, exam, gradeValue, tcp, tnup = 0;
                string gradeName = "";
                var getRecord = (from d in studentCollection where d.MatricNo.Trim() == allStudentMatric.Trim() join f in subjectCollection on d.SubjectID equals f.SubjectID select new { d.CA, d.EXAM, d.SubjectID, f.SubjectValue, d.TNU }).ToList();

                foreach (var useRecord in getRecord)
                {
                    ca = useRecord.CA;
                    exam = useRecord.EXAM;
                    ta = ca + exam;
                    if (ta >= 45)
                    {
                        tnup = useRecord.SubjectValue;
                    }
                    else
                    {
                        tnup = 0;
                    }
                    gradeValue = Util.GradeValue(ta);
                    gradeName = Util.GradeName(ta);
                    tcp = gradeValue * useRecord.SubjectValue;

                    var UpdateResult = (from d in studentCollection where d.MatricNo.Trim() == allStudentMatric.Trim() && d.SubjectID == useRecord.SubjectID select d).ToList();
                    foreach (var setUpdate in UpdateResult)
                    {
                        setUpdate.TA = ta;
                        setUpdate.TCP = tcp;
                        setUpdate.TNUP = tnup;
                        db.SaveChanges();
                    }
                }

            }
            //calculating gpa
            foreach (string allStudentMatric in MatricNo)
            {
                getDeptID = (from d in studentCollection where d.MatricNo.Trim() == allStudentMatric.Trim() select d.DepartmentID).Distinct().ToList();
                foreach (int setDeptID in getDeptID)
                {
                    var getResultDetail = (from s in studentCollection where s.DepartmentID == setDeptID && s.MatricNo.Trim() == allStudentMatric.Trim() select new { s.TCP, s.TNUP, s.TNU }).ToList();
                    var getTnu = (from s in studentCollection where s.DepartmentID == setDeptID && s.MatricNo.Trim() == allStudentMatric.Trim() select s.TNU).FirstOrDefault();
                    var getSumTCP = getResultDetail.Select(a => a.TCP).Sum();
                    var getSumTNUP = getResultDetail.Select(a => a.TNUP).Sum();

                    Response.Write("This is the TNU" + getTnu + "");
                    Response.Write("This is the TCP" + getSumTCP + "");
                    Response.Write("This is the TNUP" + getSumTNUP + "");
                    Response.Write("<br/>");


                    var UpdateNewResult = (from d in studentCollection where d.MatricNo.Trim() == allStudentMatric.Trim() && d.DepartmentID == setDeptID select d).Distinct().ToList();
                    foreach (var setNewResult in UpdateNewResult)
                    {
                        setNewResult.TCP = getSumTCP;
                        setNewResult.TNUP = getSumTNUP;
                        setNewResult.GPA = getSumTCP / getTnu;
                        db.SaveChanges();
                    }

                    var getFullDetail = (from d in db.Results where d.MatricNo.Trim() == allStudentMatric.Trim() select new { d.TCP, d.TNU, d.TNUP }).Distinct().ToList();
                    var getSumCTCP = getFullDetail.Select(a => a.TCP).Sum();
                    var getSumCTNU = getFullDetail.Select(a => a.TNU).Sum();
                    var getSumCTNUP = getFullDetail.Select(a => a.TNUP).Sum();
                    var FullupdateResult = (from d in db.Results where d.MatricNo.Trim() == allStudentMatric.Trim() select d).ToList();
                    foreach (var setfullUpdate in FullupdateResult)
                    {
                        setfullUpdate.CTCP = getSumCTCP;
                        setfullUpdate.CTNU = getSumCTNU;
                        setfullUpdate.CTNUP = getSumCTNUP;
                        setfullUpdate.CGPA = getSumCTCP / getSumCTNU;
                        db.SaveChanges();
                    }
                }
            }
            watch.Stop();
            Response.Write("Time Elapsed:" + watch.Elapsed);
        }
    }
}