using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using satcas.Classes;

namespace satcas
{
    public partial class ManageStudent : System.Web.UI.Page
    {
        private List<Student> StudentList2 = new List<Student>();

        protected void Page_Load(object sender, EventArgs e)
        {
            StudentList2.Add(new Student("91293239", "Kenny", "Le", "Fall 2017", "", "Completed", ""));
            StudentList2.Add(new Student("19474783", "Ryan", "Chang", "Fall 2017", "", "Completed", ""));
            StudentList2.Add(new Student("39390933", "Tommy", "Tran", "Fall 2017", "", "Completed", ""));
            gvStudent.DataSource = StudentList2;
            gvStudent.DataBind();
        }
    }
}