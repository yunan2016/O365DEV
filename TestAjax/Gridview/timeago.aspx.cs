using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Gridview
{
    public partial class timeago : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGridData();
            }
          
        }

        protected void grdData_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridDisplay.PageIndex = e.NewPageIndex;
            if ("1".Equals(this.HiddenField1.Value))
            {
                LoadGridData1();
            }
            else
            {
                LoadGridData();
            }
           
        }
        private void LoadGridData()
        {
            DataSet objDs = new DataSet();
            using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from Employees";
                SqlDataAdapter dAdapter = new SqlDataAdapter();
                dAdapter.SelectCommand = cmd;
                con.Open();
                //create list and add items in it 
                dAdapter.Fill(objDs);
            }
            this.GridDisplay.DataSource = objDs;
            this.GridDisplay.DataBind();
        }


        private void LoadGridData1()
        {
            DataSet objDs = new DataSet();
            using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from Employees where Region ='WA'";
                SqlDataAdapter dAdapter = new SqlDataAdapter();
                dAdapter.SelectCommand = cmd;
                con.Open();
                //create list and add items in it 
                dAdapter.Fill(objDs);
            }
            this.GridDisplay.DataSource = objDs;
            this.GridDisplay.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.HiddenField1.Value = "1";
            LoadGridData1();
        }

        
    }
}