using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace School365.Model
{
    public class SubjectCombination
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int SubjectCombinID { get; set; }
        public string SubjectCombinName { get; set; }
        public virtual ICollection<Result> Results { get; set; }
        public virtual ICollection<AllCombined> AllCombineds { get; set; }
        public virtual ICollection<CarryOver> CarryOvers { get; set; }
        
    }
}