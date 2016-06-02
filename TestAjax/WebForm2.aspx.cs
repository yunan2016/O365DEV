using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Load the first dropdownlist
                LoadDropDown();
                var a = "&lt;";
                var b = Server.HtmlDecode(a);
               // Panel1.Visible = true;
            }

        }
        //This method is used to load the first dropdownlist
        public void LoadDropDown()
        {
            this.DropDownList1.DataValueField = "db_ID";
            this.DropDownList1.DataTextField = "db_Name";
            this.DropDownList1.DataBind();
            this.DropDownList1.Items.Add(new ListItem("please select", ""));
            this.DropDownList1.Items.Add(new ListItem("db1", "DataBase1"));
            this.DropDownList1.Items.Add(new ListItem("db2", "DataBase2"));
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.DropDownList2.DataValueField = "table_ID";
            this.DropDownList2.DataTextField = "table_Name";

            this.DropDownList2.Items.Clear();
            if (this.DropDownList1.SelectedIndex == 1)
            {
                this.DropDownList2.Items.Add(new ListItem("please select", ""));
                this.DropDownList2.Items.Add(new ListItem("tb1", "DataBase1"));
                this.DropDownList2.Items.Add(new ListItem("db2", "DataBase2"));
            }
            if (this.DropDownList1.SelectedIndex == 2)
            {
                this.DropDownList2.Items.Add(new ListItem("please select", ""));
                this.DropDownList2.Items.Add(new ListItem("tb3", "DataBase3"));
                this.DropDownList2.Items.Add(new ListItem("db4", "DataBase4"));
            }


        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable tblDatas = new DataTable("Datas");
            DataColumn dc = null;   
            dc = tblDatas.Columns.Add("Att1", Type.GetType("System.String"));
            dc = tblDatas.Columns.Add("Att2", Type.GetType("System.String"));
            
            DataRow newRow; 
            newRow = tblDatas.NewRow();
            newRow["Att1"] = "ATT1";
            newRow["Att2"] = "ATT2";        
            tblDatas.Rows.Add(newRow);

            newRow = tblDatas.NewRow();
            newRow["Att1"] = "ATT1.1";
            newRow["Att2"] = "ATT2.1";
            tblDatas.Rows.Add(newRow);

            if (DropDownList2.SelectedIndex==1)
            {
                GridView1.DataSource = tblDatas;
                GridView1.DataBind();
            }
            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
        }
    }
}