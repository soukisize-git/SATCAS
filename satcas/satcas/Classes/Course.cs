using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace satcas.Classes
{
    public class Course
    {
        private String institution, courseNum, department, title, status, college;

        public Course(String Institution, String CourseNumber, String Department, String Title, String Status, String College)
        {
            institution = Institution;
            courseNum = CourseNumber;
            department = Department;
            title = Title;
            status = Status;
            college = College;
        }

        public String Institution
        {
            get { return institution; }
        }

        public String CourseNumber
        {
            get { return courseNum; }
        }

        public String Department
        {
            get { return department; }
        }

        public String Title
        {
            get { return title; }
        }

        public String Status
        {
            get { return status; }
        }

        public String College
        {
            get { return college; }
        }
    }
}