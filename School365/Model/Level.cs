using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace School365.Model
{
    public class Level
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int LevelID { get; set; }
        public string LevelValue { get; set; }
      //  public virtual ICollection<Result> Results { get; set; }
    }
}