using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace School365.Model
{
    public class CarryOver
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int CarryOverID { get; set; }
        public int StudentID { get; set; }
        public string MatricNo { get; set; }
        public int SubjectID { get; set; }
        public int SubjectCombinID { get; set; }
        public int DepartmentID { get; set; }
        public int SessionID { get; set; }
        public virtual Student Students { get; set; }
        public virtual Subject Subjects { get; set; }
        public virtual SubjectCombination SubjectCombinations { get; set; }
        public virtual Department Departments { get; set; }
        public virtual Session Sessions { get; set; }
    }
}