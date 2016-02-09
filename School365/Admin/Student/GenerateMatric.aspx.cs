using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School365.Admin.Student
{
    public partial class GenerateMatric : System.Web.UI.Page
    {
        //Need to put value as curent
        StudentModel db = new StudentModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var getStudent = from d in db.Students where d.MatricNo == null orderby d.FacultyName ascending,d.Major ascending,d.Surname ascending select new { d.StudentID, d.Firstname, d.Surname, d.MatricNo };
                allStudents.DataSource = getStudent.ToList();
                allStudents.DataBind();
            }
        }

        protected void matricGen_Click(object sender, EventArgs e)
        {
            //get year here
            foreach (GridViewRow row in allStudents.Rows)
            {
                string collectedMat = "";
                string getValue = "";
                string value1 = "";
                string value2 = "";
                string value3 = "";
                int getInt = 0;
                string prefix = string.Empty;
                try
                {
                    var value = (from d in db.Students orderby d.MatricNo descending select d.MatricNo).Take(1).First();
                    collectedMat = value;
                    string[] splitMat = Regex.Split(collectedMat, "/");
                    value1 = splitMat[0].ToString();
                    value2 = splitMat[1].ToString();
                    value3 = splitMat[2].ToString();
                    getInt = int.Parse(value3);
                    getValue = getInt.ToString();

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }

                try
                {
                    if (getValue.Length == 4)
                    {
                        if (int.Parse(value3) < 9999)
                        {
                            int newValue = int.Parse(value3) + 1;
                            prefix = "NCE" + "/" + value2 + "/" + "" + newValue;
                        }
                        else if (int.Parse(value3) == 9999)
                        {
                            int newValue = int.Parse(value3) + 1;
                            prefix = "NCE" + "/" + value2 + "/" + "" + newValue;
                        }
                        else
                        {

                        }

                    }
                    else if (getValue.Length == 3)
                    {
                        if (int.Parse(value3) < 999)
                        {
                            int newValue = int.Parse(value3) + 1;
                            prefix = "NCE" + "/" + value2 + "/" + "0" + newValue;
                        }

                        else if (int.Parse(value3) == 999)
                        {
                            int newValue = int.Parse(value3) + 1;

                            prefix = "NCE" + "/" + value2 + "/" + "0" + newValue;

                        }

                    }
                    else if (getValue.Length == 2)
                    {
                        if (int.Parse(value3) < 99)
                        {
                            int newValue = int.Parse(value3) + 1;
                            prefix = "NCE" + "/" + value2 + "/" + "00" + newValue;
                        }

                        else if (int.Parse(value3) == 99)
                        {
                            int newValue = int.Parse(value3) + 1;
                            prefix = "NCE" + "/" + value2 + "/" + "" + newValue;
                        }
                        else
                        {
                            //Console.WriteLine("ERROR");
                        }

                    }
                    else if (getValue.Length == 1)
                    {
                        if (int.Parse(value3) < 9)
                        {
                            int newValue = int.Parse(value3) + 1;
                            prefix = "NCE" + "/" + value2 + "/" + "000" + newValue;
                        }

                        else if (int.Parse(value3) == 9)
                        {
                            int newValue = int.Parse(value3) + 1;

                            prefix = "NCE" + "/" + value2 + "/" + "00" + newValue;
                        }
                        else
                        {

                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                //Response.Write(row.Cells[0].Text);
                int getStudentID = int.Parse(row.Cells[0].Text);
                var UpdateStudent = (from d in db.Students where d.StudentID == getStudentID select d).First();
                Response.Write(prefix);
                UpdateStudent.MatricNo = prefix;
                db.SaveChanges();

                var UpdateProfile = (from d in db.Results where d.StudentID == getStudentID select d).ToList().ToList();
                foreach (var setUpdate in UpdateProfile)
                {
                    setUpdate.MatricNo = prefix;
                    db.SaveChanges();
                }
               
            }
        }
    }
}