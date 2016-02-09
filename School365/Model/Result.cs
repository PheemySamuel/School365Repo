using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace School365.Model
{
    public class Result
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ResultID { get; set; }
        public int StudentID { get; set; }
        public string MatricNo { get; set; }
        public int DepartmentID { get; set; }
        public int SessionID { get; set; }
        //public int FacultyID { get; set; }
        public int SubjectID { get; set; }
        public double Level { get; set; }
        public int SubjectCombinID { get; set; }
        public double CA { get; set; }
        public double EXAM { get; set; }
        public double TA { get; set; }
        public double TCP { get; set; }
        public double TNU { get; set; }
        public double TNUP { get; set; }
        public double GPA { get; set; }
        public string LecturerInserted { get; set; }
        public double CTCP { get; set; }
        public double CTNU { get; set; }
        public double CTNUP { get; set; }
        public double CGPA { get; set; }
        public string Approved { get; set; }
       

        public virtual Student Students { get; set; }
        public virtual Department Departments { get; set; }
        public virtual Session Sessions { get; set; }
      //  public virtual Faculty Facultys { get; set; }
        public virtual  Subject Subjects { get; set; }
        public virtual SubjectCombination SubjectCombinations { get; set; }
        //public virtual Level Levels { get; set; }
    }
}