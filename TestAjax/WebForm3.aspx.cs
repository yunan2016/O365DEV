using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace TestAjax
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dataBinding();


                foreach (GridViewRow gvr in GridView1.Rows)
                {
                    for (int i = 0; i < GridView1.Columns.Count; i++)
                    {

                        //judge the 
                    }


                }

            }
          
        }

        private void dataBinding()
        {
            DataTable tblDatas = new DataTable("Datas");
            DataColumn dc = null;
            dc = tblDatas.Columns.Add("Att1", Type.GetType("System.String"));
            dc = tblDatas.Columns.Add("Att2", Type.GetType("System.String"));

            DataRow newRow;
            newRow = tblDatas.NewRow();
            newRow["Att1"] = "ATT1";
            newRow["Att2"] = "ATT1.1";
            tblDatas.Rows.Add(newRow);

            newRow = tblDatas.NewRow();
            newRow["Att1"] = "ATT2";
            newRow["Att2"] = "ATT2.1";
            tblDatas.Rows.Add(newRow);

            newRow = tblDatas.NewRow();
            newRow["Att1"] = "ATT3";
            newRow["Att2"] = "ATT3.1";
            tblDatas.Rows.Add(newRow);

            newRow = tblDatas.NewRow();
            newRow["Att1"] = "ATT4";
            newRow["Att2"] = "ATT4.1";
            tblDatas.Rows.Add(newRow);

            //UploadDataTableToExcel(tblDatas);

            var a = tblDatas.Rows[0]["Att1"].ToString();

            //DataSet dataSet = new DataSet();
            //dataSet.Tables.Add(tblDatas);

            // Save to a file
            //dataSet.WriteXml(@"D:\MyData.xml");


            string[] ID = XDocument.Load(@"D:\MyData.xml").Descendants("ID").Select(element => element.Value).ToArray();

            var C = XDocument.Load(@"D:\TEST.xml").Descendants("FeegId").Max(x => (int)x);
            //// Read from a file
            //dataSet.ReadXml(@"D:\MyData.xml");
            GridView1.DataSource = tblDatas;
            GridView1.DataBind();
        }

        protected void UploadDataTableToExcel(DataTable dtRecords)
        {
            string XlsPath = Server.MapPath(@"~/test.xls");
            string attachment = string.Empty;
            if (XlsPath.IndexOf("\\") != -1)
            {
                string[] strFileName = XlsPath.Split(new char[] { '\\' });
                attachment = "attachment; filename=" + strFileName[strFileName.Length - 1];
            }
            else
                attachment = "attachment; filename=" + XlsPath;
            try
            {
                Response.ClearContent();
                Response.AddHeader("content-disposition", attachment);
                Response.ContentType = "application/vnd.ms-excel";
                string tab = string.Empty;

                foreach (DataColumn datacol in dtRecords.Columns)
                {
                    Response.Write(tab + datacol.ColumnName);
                    tab = "\t";
                }
                Response.Write("\n");

                foreach (DataRow dr in dtRecords.Rows)
                {
                    tab = "";
                    for (int j = 0; j < dtRecords.Columns.Count; j++)
                    {
                        Response.Write(tab + Convert.ToString(dr[j]));
                        tab = "\t";
                    }

                    Response.Write("\n");
                }
                Response.End();
            }
            catch (Exception ex)
            {
                //Response.Write(ex.Message);
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.GridView1.PageIndex = e.NewPageIndex;
            dataBinding();
        }
        protected void Button_search_Click(object sender, EventArgs e)
        {
            dataBinding();
        }
        protected void lb_firstpage_Click(object sender, EventArgs e)
        {
            this.GridView1.PageIndex = 0;
            dataBinding();
        }
        protected void lb_previouspage_Click(object sender, EventArgs e)
        {
            if (this.GridView1.PageIndex > 0)
            {
                this.GridView1.PageIndex--;
                dataBinding();
            }
        }
        protected void lb_nextpage_Click(object sender, EventArgs e)
        {
            if (this.GridView1.PageIndex < this.GridView1.PageCount)
            {
                this.GridView1.PageIndex++;
                dataBinding();
            }
        }
        protected void lb_lastpage_Click(object sender, EventArgs e)
        {
            this.GridView1.PageIndex = this.GridView1.PageCount;
            dataBinding();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            if ((string)ViewState["SortColumn"] == e.SortExpression)
            {
                ViewState["SortDirection"] = ((string)ViewState["SortDirection"] == "") ? " DESC" : "";
                GridView1.HeaderRow.Cells[GetColumnIndex(e.SortExpression)].CssClass = "AscendingHeaderStyle";
            }
            else
            {
                ViewState["SortColumn"] = e.SortExpression;
                ViewState["SortDirection"] = "";
                GridView1.HeaderRow.Cells[GetColumnIndex(e.SortExpression)].CssClass = "DescendingHeaderStyle";
            }
            dataBinding();


        }
        private int GetColumnIndex(string SortExpression)
        {
            int i = 0;
            foreach (DataControlField c in GridView1.Columns)
            {
                if (c.SortExpression == SortExpression)
                    break;
                i++;
            }
            return i;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "checkAppIss")
            {

                ShowPopup();

            }
        }
        public void ShowPopup()
        {
            lblAppID.Text = "1";
            lblAppName.Text = "2";
            popup.Show();

        }

        protected void UpdatePanel1_Load(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(),
     "myFunction", "Pageload();GetPosition();", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            foreach (GridViewRow item in this.GridView1.Rows)
            {
                var a = item.RowIndex;
            }

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //int cellindex = -1;
                //for (int i = 0; i < e.Row.Cells.Count; i++)
                //{
                //    if (e.Row.Cells[i].FindControl("TextBox1") != null)
                //    {
                //        cellindex = i;
                //    }
                //}
                //e.Row.Cells[cellindex].BackColor = ColorTranslator.FromHtml("#96C757");

                int intex = GetColumnIndexByName(GridView1, "Att1");
                e.Row.Cells[intex].BackColor = ColorTranslator.FromHtml("#96C757");
            }
            

        }

        int GetColumnIndexByName(GridViewRow row, string SearchColumnName)
        {
            int columnIndex = 0;
            foreach (DataControlFieldCell cell in row.Cells)
            {
                if (cell.ContainingField is BoundField)
                {
                    if (((BoundField)cell.ContainingField).DataField.Equals(SearchColumnName))
                    {
                        break;
                    }
                }
                columnIndex++;
            }
            return columnIndex;
        }


        private int GetColumnIndexByName(GridView grid, string name)
        {
            foreach (DataControlField col in grid.Columns)
            {
                if (col.HeaderText.ToLower().Trim() == name.ToLower().Trim())
                {
                    return grid.Columns.IndexOf(col);
                }
            }

            return -1;
        }

        protected void MContract_SelectedIndexChanged(object sender, EventArgs e)
        {
         
        }
    }
}