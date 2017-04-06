using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using satcas.Classes;

namespace satcas
{
    public partial class EvaluatorDashboard : System.Web.UI.Page
    {
        private List<Student> StudentList = new List<Student>();
        private List<Course> CourseList = new List<Course>();

        protected void Page_Load(object sender, EventArgs e)
        {
            StudentList.Add(new Student("914967942", "Kenny", "Le", "", "", "Pending", ""));
            StudentList.Add(new Student("915966942", "Ryan", "Chang", "", "", "Pending", ""));
            StudentList.Add(new Student("915366942", "Tommy", "Tran", "", "", "Pending", ""));
            gvStudentList.DataSource = StudentList;
            gvStudentList.DataBind();

            CourseList.Add(new Course("University of Paris", "CIS 99", "CIS", "Algorithm", "Pending", ""));
            CourseList.Add(new Course("University of Paris", "CIS 1000", "CIS", "Discrete Math", "Pending", ""));
            CourseList.Add(new Course("University of Paris", "CIS 71", "CIS", "Database", "Pending", ""));
            gvStudent.DataSource = CourseList;
            gvStudent.DataBind();
        }
    }
}