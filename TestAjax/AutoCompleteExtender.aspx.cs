using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{

    public partial class AutoCompleteExtender : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }


        [System.Web.Script.Services.ScriptMethod()]

        [System.Web.Services.WebMethod]

        public static List<string> SearchCustomers(string prefixText, int count)
        {

            using (SqlConnection conn = new SqlConnection())
            {

                conn.ConnectionString = ConfigurationManager

                        .ConnectionStrings["NorthwindConnectionString"].ConnectionString;

                using (SqlCommand cmd = new SqlCommand())
                {

                    cmd.CommandText = "select ContactName from Customers where " +

                    "ContactName like @SearchText + '%'";

                    cmd.Parameters.AddWithValue("@SearchText", prefixText);

                    cmd.Connection = conn;

                    conn.Open();

                    List<string> customers = new List<string>();

                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {

                        while (sdr.Read())
                        {

                            customers.Add(sdr["ContactName"].ToString());

                        }

                    }

                    conn.Close();

                    return customers;

                }

            }

        }

        protected void txtInfo_TextChanged(object sender, EventArgs e)
        {
            Response.Write("text changed!");
        }
    }
}