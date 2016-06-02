using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestAjax.UserControls;

namespace TestAjax.Gridview
{
    public partial class Gridview1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                GridView1.DataSource = BindGridView();
                GridView1.DataBind();


            }
        }
        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            string sortingDirection = string.Empty;
           
            bool flag = false;
            if (direction == SortDirection.Ascending)
            {
                direction = SortDirection.Descending;
                sortingDirection = "Desc";                            
            }
            else
            {
                direction = SortDirection.Ascending;
                sortingDirection = "Asc";
                flag = true;             
            }
            DataView sortedView = new DataView(BindGridView());
            sortedView.Sort = e.SortExpression + " " + sortingDirection;
            Session["SortedView"] = sortedView;
            GridView1.DataSource = sortedView;
            GridView1.DataBind();
            if (flag)
            {
                GridView1.HeaderRow.Cells[GetColumnIndex((sender as GridView), e.SortExpression)].CssClass = "AscendingHeaderStyle";
            }
            else
            {
                GridView1.HeaderRow.Cells[GetColumnIndex((sender as GridView), e.SortExpression)].CssClass = "DescendingHeaderStyle";
            }
          
        }

        private DataTable BindGridView()
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[3] { new DataColumn("Id", typeof(int)),
                        new DataColumn("Name", typeof(string)),
                        new DataColumn("Country",typeof(string)) });
            dt.Rows.Add(1, "John Hammond", "United States");
            dt.Rows.Add(2, "Mudassar Khan", "India");
            dt.Rows.Add(3, "Suzanne Mathews", "France");
            dt.Rows.Add(4, "Robert Schidner", "Russia");
            dt.Rows.Add(5, "John Hammond", "United States");
            dt.Rows.Add(6, "Mudassar Khan", "India");
            dt.Rows.Add(7, "Suzanne Mathews", "France");
            dt.Rows.Add(8, "Robert Schidner", "Russia");
            dt.Rows.Add(9, "John Hammond", "United States");
            dt.Rows.Add(10, "Mudassar Khan", "India");
            dt.Rows.Add(11, "Suzanne Mathews", "France");
            dt.Rows.Add(12, "Robert Schidner", "Russia");
            return dt;
        }

        public SortDirection direction
        {
            get
            {
                if (ViewState["directionState"] == null)
                {
                    ViewState["directionState"] = SortDirection.Ascending;
                }
                return (SortDirection)ViewState["directionState"];
            }
            set
            {
                ViewState["directionState"] = value;
            }
        }//direction


        private int GetColumnIndex(GridView gridview, string sortExpression)
        {
            int i = 0;
            foreach (DataControlField c in gridview.Columns)
            {
                if (c.SortExpression == sortExpression) break;
                i++;
            }
            return i;
        }
        protected void GetDetails(object sender, EventArgs e)
        {
            GridViewRow row = (sender as Button).NamingContainer as GridViewRow;
            string id = "Id: " + row.Cells[0].Text;
            string name = "Name: " + row.Cells[1].Text;
            string country = "Country: " + (row.FindControl("ucCountry") as U_Label).Country;
            string message = string.Format("{0}\\n{1}\\n{2}", id, name, country);
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
        }
    }
}