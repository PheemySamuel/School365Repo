using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace School365.Model
{
    public class Faculty
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int FacultyID { get; set; }
        public string FacultyName { get; set; }
        public string FacultyCode { get; set; }
        public virtual ICollection<Department> Departments { get; set; }
       
      //  public virtual ICollection<Result> Results { get; set; }
       // public virtual ICollection<AllCombined> AllCombineds { get; set; }

    }
}