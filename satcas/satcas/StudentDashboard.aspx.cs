using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using satcas.Classes;

namespace satcas
{
    public partial class StudentDashboard : System.Web.UI.Page
    {
        private List<Course> CourseList = new List<Course>();

        protected void Page_Load(object sender, EventArgs e)
        {
            CourseList.Add(new Course("University of Paris", "CIS 123", "CIS", "Algorithm", "Approved", ""));
            CourseList.Add(new Course("University of Paris", "CIS 54", "CIS", "Discrete Math", "Pending", ""));
            CourseList.Add(new Course("University of Paris", "CIS 71", "CIS", "Database", "Denied", ""));
            CourseList.Add(new Course("University of Paris", "CIS 99", "CIS", "Data Structures", "Approved", ""));
            gvCourseRoster.DataSource = CourseList;
            gvCourseRoster.DataBind();
        }
    }
}