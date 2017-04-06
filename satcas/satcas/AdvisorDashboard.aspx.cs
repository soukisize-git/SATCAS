using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using satcas.Classes;

namespace satcas
{
    public partial class AdvisorDashboard : System.Web.UI.Page
    {
        private List<Student> StudentList = new List<Student>();
        private List<Course2> CourseList = new List<Course2>();

        protected void Page_Load(object sender, EventArgs e)
        {
            StudentList.Add(new Student("914967942", "Kenny", "Le", "CS", "", "Pending", ""));
            StudentList.Add(new Student("915966942", "Ryan", "Chang", "ENG", "", "Pending",""));
            StudentList.Add(new Student("915366942", "Tommy", "Tran", "Business", "", "Pending", ""));
            gvStudentList.DataSource = StudentList;
            gvStudentList.DataBind();

            CourseList.Add(new Course2("University of Paris", "CIS 99", "CIS", "CIS 25", "", "Pending"));
            CourseList.Add(new Course2("University of Paris", "CIS 1000", "CIS", "TBD", "", "Pending"));
            CourseList.Add(new Course2("University of Paris", "CIS 71", "CIS", "CIS 33", "", "Pending"));
            gvStudent.DataSource = CourseList;
            gvStudent.DataBind();
        }
    }
}