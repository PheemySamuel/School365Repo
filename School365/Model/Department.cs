using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace School365.Model
{
    public class Department
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int DepartmantID { get; set; }
        public string DepartmentName { get; set; }
        public string DepartmentCode { get; set; }
        public string FacultyID { get; set; }
        public virtual ICollection<Result> Results { get; set; }
        public virtual ICollection<AllCombined> AllCombineds { get; set; }
        public virtual ICollection<CarryOver> CarryOvers { get; set; }
        public virtual Faculty Facultys { get; set; }

    }
}