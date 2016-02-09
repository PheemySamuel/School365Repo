using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace School365.Model
{
    public class Lecturer
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int LecturerID { get; set; }
        public string LecturerKey { get; set; }
        public string Firstname { get; set; }
        public string Surname { get; set; }
        public string Middlename { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public bool PasswordChanged { get; set; }
        public string ImageName { get; set; }
        public byte[] LecurerImage { get; set; }
        public virtual ICollection<LecturerProfile> LecturerProfiles { get; set; }
    }
}