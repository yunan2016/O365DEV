using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Gridview
{
    public partial class sqlsourcecontrol : System.Web.UI.Page
    {
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            dt.Columns.Add(new DataColumn("DATE"));
            dt.Columns.Add(new DataColumn("CODE"));
            dt.Columns.Add(new DataColumn("PROFILE_NAME"));
            dt.Columns.Add(new DataColumn("DESCRIPTION"));
            dt.Columns.Add(new DataColumn("STATUS"));
            dt.Columns.Add(new DataColumn("USER"));
            dt.Columns.Add(new DataColumn("SUB_USER"));
            dt.Columns.Add(new DataColumn("SCORE"));
            dt.Columns.Add(new DataColumn("ROLE"));
            dt.Columns.Add(new DataColumn("QUANTITY"));
            dt.Columns.Add(new DataColumn("ITEM"));
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_DataBound(object sender, EventArgs e)
        {

        }

        protected void ProductsWithCategoryInfoDataSource_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
            TextBox1.Text = e.AffectedRows.ToString();
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           
            DataRow dr;

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (Convert.ToString(DataBinder.Eval(e.Row.DataItem, "ProductID")) == "1")
                {
                    dr = dt.NewRow();
                    dr["DATE"] = e.Row.Cells[0].Text;
                    dr["CODE"] = e.Row.Cells[1].Text;
                    dr["PROFILE_NAME"] = e.Row.Cells[2].Text;

                    dt.Rows.Add(dr);
                    //GridView2.DataSource = dt;
                    //GridView2.DataBind();
                }
                else
                {
                    e.Row.ForeColor = System.Drawing.Color.Blue;
                }
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var a = this.dt;
        }
    }
}