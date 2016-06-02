using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

using System.Data;
using System.Data.SqlClient;

namespace TestAjax
{
    /// <summary>
    /// AutoComplete 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    [System.Web.Script.Services.ScriptService]
    public class AutoComplete : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public string[] GetData(string prefixText, int count)
        {
            string[] data = new string[4] { "Star Wars", "Star Trek", "Memento", "Superman" };
            return data.Where(p => p.IndexOf(prefixText) >= 0).Take(count).ToArray();
        }
        [WebMethod]
        public string[] GetData1(string prefixText, int count)
        {
            List<string> items = new List<string>(count);

            string str = AjaxControlToolkit.AutoCompleteExtender.CreateAutoCompleteItem("test", Convert.ToString(1));
            items.Add(str);


            return items.ToArray();
        }

        [WebMethod]
        public string[] GetPort(string prefixText, int count)
        {
            string connection = "*****";
            SqlConnection cn;
            DataSet ds = new DataSet();
            using (cn = new SqlConnection(connection))
            {
                cn.Open();
                string sql = "******";
                SqlDataAdapter adapter = new SqlDataAdapter(sql, cn);
                adapter.Fill(ds);
                cn.Close();
            }
            int lenght = ds.Tables[0].Rows.Count;
            string[] data = new string[lenght];
            for (int i = 0; i < lenght; i++)
            {
                string temp = ds.Tables[0].Rows[i]["PortName"].ToString() + "  " +
                    ds.Tables[0].Rows[i]["PortCode"].ToString() + "  " +
                    ds.Tables[0].Rows[i]["NationName"].ToString() + "  " +
                    ds.Tables[0].Rows[i]["NationCode"].ToString() + "  ";
                data[i] = temp;
            }
            return data;
        }

    }//end class
}
