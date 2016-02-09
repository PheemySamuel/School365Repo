using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace School365.Model
{
    public class Grade
    {
        public int GradeID { get; set; }
        public double Minimum { get; set; }
        public double Maximum { get; set; }
        public int Value { get; set; }
        public string Name { get; set; }
    }
}