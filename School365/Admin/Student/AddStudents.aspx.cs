using School365.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin.Student
{
    public partial class AddStudents : System.Web.UI.Page
    {
        StudentModel db = new StudentModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            /* db = new Education365Context();
            string[] lines = File.ReadAllLines(Server.MapPath("files/session.csv"));

            for (int i = 0; i < lines.Length; i++)
            {
                string[] members = lines[i].Split(',');
                Models.Session session = new Models.Session();
                session.SessionId = int.Parse(members[0]);
                session.Name = members[1];
                session.Current = (members[2] == "1");

                db.Sessions.Add(session);
            }

            //db.SaveChanges();
            Response.Write("Complete!");*/

            string FileName = System.IO.Path.GetFileName(uploadCSV.PostedFile.FileName);
            uploadCSV.PostedFile.SaveAs(Server.MapPath("~/SchoolFile/" + FileName));
            string csvPath =uploadCSV.PostedFile.FileName;
            //response.Write(csvPath.ToString());
            string[] readCsv = System.IO.File.ReadAllLines(Server.MapPath("~/SchoolFile/" + FileName));
          
            for (int i = 0; i < readCsv.Length; i++)
            {
                string[] members = readCsv[i].ToString().Split(',');
                Model.Student student = new Model.Student();
                student.Surname = members[0];
                student.Firstname = members[1];
                student.Middlename = members[2];
                student.Major = members[3];
                student.Minor = members[4];
                student.Level = double.Parse(members[5].ToString());
                student.FacultyName = members[6].ToString();
                student.InvoiceNumber = Guid.NewGuid().ToString().Substring(0, new Guid().ToString().IndexOf("-"));
                student.StudentKey = System.Guid.NewGuid().ToString();
                db.Students.Add(student);
                db.SaveChanges();
            }
            //Response.Write("Data Inserted");
        }
    }
}