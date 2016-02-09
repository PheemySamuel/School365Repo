using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace School365.Model
{
    public class LecturerProfile
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int LecturerProfileID { get; set; }
        public string LecturerID { get; set; }
        public string SubjectID { get; set; }
        public virtual Lecturer Lectures { get; set; }
        public virtual Subject Subjects { get; set; }
    }
}