using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using satcas.Classes;

namespace satcas
{
    public partial class FindCourse : System.Web.UI.Page
    {
        private List<Course> CourseList = new List<Course>();

        protected void Page_Load(object sender, EventArgs e)
        {
            CourseList.Add(new Course("University of Paris", "CIS 123", "CIS", "Algorithm", "Approved", "College of Science & Technology"));
            CourseList.Add(new Course("University of Paris", "CIS 54", "CIS", "Discrete Math", "Pending", "College of Science & Technology"));
            CourseList.Add(new Course("University of Paris", "CIS 99", "CIS", "Data Structures", "Approved", "College of Science & Technology"));
            gvCourseList.DataSource = CourseList;
            gvCourseList.DataBind();
        }
    }
}