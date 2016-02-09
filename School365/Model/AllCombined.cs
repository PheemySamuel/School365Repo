using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace School365.Model
{
    public class AllCombined
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int AllCombinedID { get; set; }
        public int SubjectCombineID { get; set; }
        public int DepartmentID { get; set; }
        public int SubjectID { get; set; }
        //public int FacultyID { get; set; }

        public virtual SubjectCombination SubjectCombinations { get; set; }
        public virtual Department Departments { get; set; }
        public virtual Subject Subjects { get; set; }
        //public virtual Faculty Facultys { get; set; }
    }
}