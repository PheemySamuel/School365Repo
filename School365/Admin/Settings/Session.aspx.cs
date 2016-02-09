using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin.Settings
{
    public partial class Session : System.Web.UI.Page
    {
        StudentModel db = new StudentModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var getSession = (from d in db.Sessions select d).ToList();
                allSession.DataSource = getSession;
                allSession.DataBind();
            }
        }

        protected void InsertBtn_Click(object sender, EventArgs e)
        {
            var InsertSession = new Model.Session
            {
                SessionYear = sessionYear.Text,
                CurrentSession = false,
            };
            db.Sessions.Add(InsertSession);
            db.SaveChanges();
            sessionYear.Text = "";
        }

        private void UpdateStudentYear()
        {
            int getCurrentID = (from d in db.Sessions where d.CurrentSession == true select d.SessionID).FirstOrDefault();
            var StudentDetails = (from d in db.Results where d.SessionID == getCurrentID join f in db.Students on d.StudentID equals f.StudentID select new { d.StudentID, d.Level, f.Registered }).Distinct().ToList();
            foreach (var setStudentDetails in StudentDetails)
            {
                var UpdateStudent = (from d in db.Students where d.StudentID == setStudentDetails.StudentID select d).FirstOrDefault();
                UpdateStudent.Level = setStudentDetails.Level + 100;
                UpdateStudent.Registered = "False";
                db.SaveChanges();
            }
        }
        private void InsertCarryOver()
        {
            int CurrentSession = (from d in db.Sessions where d.CurrentSession == true select d.SessionID).FirstOrDefault();
            var getCarryOvers = (from d in db.Results where d.TA <= 45 && d.SessionID == CurrentSession select new { d.StudentID, d.MatricNo, d.SubjectID, d.SubjectCombinID, d.DepartmentID, d.SessionID });
            foreach (var setCarryOvers in getCarryOvers)
            {
                var InsertCarryOvers = new CarryOver
                {
                    StudentID = setCarryOvers.SessionID,
                    MatricNo = setCarryOvers.MatricNo,
                    SubjectID = setCarryOvers.SubjectID,
                    DepartmentID = setCarryOvers.DepartmentID,
                    SessionID = setCarryOvers.SessionID,
                    SubjectCombinID = setCarryOvers.SubjectCombinID,
                };
                db.CarryOvers.Add(InsertCarryOvers);
                db.SaveChanges();
            }
        }

        private void InsertMatric()
        {
            string NewCurrent = (from d in db.Sessions where d.CurrentSession == true select d.SessionYear).FirstOrDefault();
            string[] stringValue = NewCurrent.Split('/');
            var InsertStudent = new Model.Student
            {
                Firstname = "Sample",
                Middlename = "Sample",
                Surname = "Sample",
                MatricNo = "NCE/" + stringValue[0].ToString() + "/0000",
                StudentKey = System.Guid.NewGuid().ToString(),
                SOR = "ABIA",
            };
            db.Students.Add(InsertStudent);
            db.SaveChanges();
        }

        protected void UpdateSession_Click(object sender, EventArgs e)
        {
            var getCurrent = (from d in db.Sessions where d.CurrentSession == true select d).FirstOrDefault();
            getCurrent.CurrentSession = false;
            db.SaveChanges();
            foreach (GridViewRow row in allSession.Rows)
            {
                if ((row.Cells[0].FindControl("selectBtn") as RadioButton).Checked)
                {
                    int sessionID = int.Parse(row.Cells[1].Text);
                    var UpdateStudent = (from d in db.Sessions where d.SessionID == sessionID select d).First();
                    UpdateStudent.CurrentSession = true;
                    db.SaveChanges();
                }
            }
            UpdateStudentYear();
            InsertCarryOver();
            InsertMatric();

        }

    }
}