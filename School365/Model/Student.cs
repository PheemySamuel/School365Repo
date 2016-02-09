using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace School365.Model
{
    public class Student
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int StudentID { get; set; }
        public string StudentKey { get; set; }
        public string MatricNo { get; set; }
        public string Surname { get; set; }
        public string Firstname { get; set; }
        public string Middlename { get; set; }
        public string SOR { get; set; }
        public string LGA { get; set; }
        public string Gender { get; set; }
        public string Nationality { get; set; }
        public string ImageName { get; set; }
        public byte[] StudentImage { get; set; }
        public string Email { get; set; }
        public string InvoiceNumber { get; set; }
        public string Major { get; set; }
        public string Minor { get; set; }
        public string PhoneNumber { get; set; }
        //public DateTime DateEntered { get; set; }
        public string FacultyName { get; set; }
        public string Password { get; set; }
        public string Approved { get; set; }
        public string SubjectCombinationID { get; set; }
        public string Remark { get; set; }
        public string Registered { get; set; }
        public double Level { get; set; }
        
        public virtual ICollection<Result> Results { get; set; }
        public virtual ICollection<CarryOver> CarryOvers { get; set; }
        

    }
}