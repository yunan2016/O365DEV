using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Html
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindDataList();
                this.Bind();
            }

        }
        private void BindDataList()
        {
            string strConnString = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT  ContactName,City,Country FROM Customers "))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;

                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            ViewState["dt"] = dt;
                        }
                    }
                }
            }
        }

        protected void Bind()
        {
            dlList.DataSource = ViewState["dt"] as DataTable;
            dlList.DataBind();
        }

        protected void dlList_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.Item.ItemIndex);
            DataTable dt = ViewState["dt"] as DataTable;

            dt.Rows[index].Delete();
            dt.AcceptChanges();

            ViewState["dt"] = dt;

            dlList.EditItemIndex = -1;
            Bind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

    }
}