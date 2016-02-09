using School365.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace School365
{
    
    public static class Util
    {
        public static int GradeValue(double total)
        {
            StudentModel db = new StudentModel();
            Grade grade = (db.Grades
                .Where(g => total >=g.Minimum && total <= g.Maximum)
                .Count() > 0) ? db.Grades.First(g => total >= g.Minimum && total <= g.Maximum) : null;
            return (grade != null) ? grade.Value : 0;
        }
        public static string GradeName(double total)
        {
            StudentModel db = new StudentModel();
            Grade grade = (db.Grades
                .Where(g =>total>=g.Minimum && total <= g.Maximum)
                .Count() > 0) ? db.Grades.First(g => total >= g.Minimum && total <= g.Maximum) : null;
           return (grade != null) ? grade.Name : null;
        }
       
    }
}