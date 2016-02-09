using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace School365.Model
{
    public class Session
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int SessionID { get; set; }
        public string SessionYear { get; set; }
        public bool CurrentSession { get; set; }
        public virtual ICollection<CarryOver> CarryOvers { get; set; }

        public virtual ICollection<Result> Results { get; set; }

    }
}