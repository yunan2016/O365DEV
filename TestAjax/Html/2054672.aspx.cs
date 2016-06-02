using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Html
{
    public partial class _2054672 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.DropDownList1.DataValueField = "db_ID";
                this.DropDownList1.DataTextField = "db_Name";
                this.DropDownList1.DataBind();
                this.DropDownList1.Items.Add(new ListItem("please select", ""));
                this.DropDownList1.Items.Add(new ListItem("db1", "DataBase1"));
                this.DropDownList1.Items.Add(new ListItem("db2", "DataBase2"));

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

                GridView1.DataSource = tblDatas;
                GridView1.DataBind();
                string cmt = comment.Text;
                int len = comment.Text.Length;
                if (len > 11)
                {
                    comment.Text = comment.Text.Substring(9);

                    lnkmore.Visible = true;
                }
            }
        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
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

            GridView2.DataSource = tblDatas;
            GridView2.DataBind();
        }



    }
}