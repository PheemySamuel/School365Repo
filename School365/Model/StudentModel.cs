namespace School365.Model
{
    using System;
    using System.Data.Entity;
    using System.Linq;

    public class StudentModel : DbContext
    {
        // Your context has been configured to use a 'StudentModel' connection string from your application's 
        // configuration file (App.config or Web.config). By default, this connection string targets the 
        // 'School365.Model.StudentModel' database on your LocalDb instance. 
        // 
        // If you wish to target a different database and/or database provider, modify the 'StudentModel' 
        // connection string in the application configuration file.
        public StudentModel()
            : base("name=StudentModel")
        {
        }

        public DbSet<Student> Students { get; set; }
        public DbSet<Lecturer> Lecturers { get; set; }
        public DbSet<Admin>Admin { get; set; }
        public DbSet <LecturerProfile>LecturerProfiles { get; set; }
        public DbSet<Result> Results { get; set; }
        public DbSet <Subject>Subjects { get; set; }
        public DbSet <SubjectCombination>SubjectCombinations { get; set; }
        public DbSet <Session>Sessions { get; set; }
        public DbSet<Level> Levels { get; set; }
        public DbSet<Faculty> Facultys { get; set; }
        public DbSet<Department> Departments { get; set; }
        public DbSet<AllCombined> AllCombineds { get; set; }
        public DbSet<Grade> Grades { get; set; }
        public DbSet<CarryOver> CarryOvers { get; set; }
    }

    //public class MyEntity
    //{
    //    public int Id { get; set; }
    //    public string Name { get; set; }
    //}
}