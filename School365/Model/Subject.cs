using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace School365.Model
{
    public class Subject
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int SubjectID { get; set; }
        public string SubjectName { get; set; }
        public string SubjectCode { get; set; }
        public double SubjectValue { get; set; }
        public string SubjectUnit { get; set; }
        public bool Active { get; set; }
        public string Semester { get; set; }
        public string SubjectLevel { get; set; }
        public virtual ICollection<CarryOver> CarryOvers { get; set; }
        public virtual ICollection<Result>Results { get; set; }
        public virtual ICollection<AllCombined> AllCombineds { get; set; }
        public virtual ICollection<LecturerProfile> LecturerProfiles { get; set; }
    }
}