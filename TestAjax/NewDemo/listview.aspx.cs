using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.NewDemo
{
    public partial class listview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.EmployeesListView.SelectedIndex = 0;
        }

        protected void EmployeesListView_ItemDeleted(object sender, ListViewDeletedEventArgs e)
        {
            string id_ = this.EmployeesListView.DataKeys[0]["EmployeeID"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id_ = this.EmployeesListView.DataKeys[1]["EmployeeID"].ToString();
            string id_2 = this.EmployeesListView.DataKeys[1]["FirstName"].ToString();
            string id_3 = this.EmployeesListView.DataKeys[this.EmployeesListView.SelectedIndex]["FirstName"].ToString();
        }
    }
}