using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using satcas.Classes;

namespace satcas
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        private List<Student> StudentList = new List<Student>();
        private List<Student> StudentList2 = new List<Student>();

        protected void Page_Load(object sender, EventArgs e)
        {
            StudentList.Add(new Student("91293239", "Nancy", "Crites", "College of Science & Technology", "CIS", "Active", "Faculty Course Evaluator"));
            StudentList.Add(new Student("19474783", "Jay", "Park", "College of Science & Technology", "---", "Active", "Academic Advisor"));
            StudentList.Add(new Student("39390933", "Rick", "Salvatore", "College of Liberal Arts", "---", "Inactive", "Academic Advisor"));
            StudentList.Add(new Student("19239239", "Nina", "Dobrev", "College of Science & Technology", "CIS", "Active", "Faculty Course Evaluator"));
            gvUser.DataSource = StudentList;
            gvUser.DataBind();

            StudentList2.Add(new Student("91293239", "Vladimir", "Moore", "College of Science & Technology", "Information Science & Technology", "Active", "Completed"));
            StudentList2.Add(new Student("19474783", "Ryan", "Higa", "College of Liberal Arts", "English", "Active", "Pending"));
            StudentList2.Add(new Student("39390933", "Caroline", "Hills", "College of Science & Technology", "Computer Science", "Inactive", "Pending"));
            gvStudent.DataSource = StudentList2;
            gvStudent.DataBind();
        }
    }
}