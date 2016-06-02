using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Gridview
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static List<string> GetAutoCompleteData(string particulars)
        {
            List<string> result = new List<string>();
            string queryString =
        "Select * from Employees where FirstName LIKE '%'+@Item+'%';";
            using (SqlConnection connection =
              new SqlConnection(ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString))
            {
                SqlCommand command =
                    new SqlCommand(queryString, connection);
                connection.Open();
                command.Parameters.AddWithValue("@Item", particulars);
                SqlDataReader reader = command.ExecuteReader();

                // Call Read before accessing data.
                while (reader.Read())
                {
                    result.Add(string.Format("{0}/{1}", reader["EmployeeID"], reader["LastName"]));
                }

                // Call Close when done reading.
                reader.Close();
            }

          
            return result;


        }


        public string ResoulveImageUrl(string hashKey)
        {
            

            return "../images/images.jpg";
        }
    }
}