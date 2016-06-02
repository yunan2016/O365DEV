using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.NewDemo
{
    public partial class _decimal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable products = new DataTable("Products");
            products.Columns.Add("IdProduct", typeof(int), null);
            products.Columns.Add("Quantity", typeof(double), null);
            products.Columns.Add("total", typeof(double), null);

            products.Rows.Add(1, 5, 25.5);
            products.Rows.Add(2, 10, 37.7);
            //float total = (float)products.AsEnumerable().Sum(r => r.total);

            var total = products.Compute("Sum(total)", string.Empty);
            Response.Write(total);


            //WebClient wc = new WebClient();
            //byte[] dataBuffer = wc.DownloadData("http://www.wpc.ncep.noaa.gov/discussions/pmdspdbody.txt");
            
            //string download = Encoding.UTF8.GetString(dataBuffer);

            //File.WriteAllText("D:\\file.txt", download, Encoding.Unicode);



            //using (WebClient client = new WebClient())
            //{
            //    client.DownloadFile("http://www.wpc.ncep.noaa.gov/discussions/pmdspdbody.txt",
            //                        @"D:\f.txt");
            //}

            List<string> dates = new List<string>();

            int totalDays = DateTime.DaysInMonth(DateTime.Now.Year, DateTime.Now.Month);

            for (int day = DateTime.Now.Day; day <= totalDays; day++)
            {
                dates.Add(new DateTime(DateTime.Now.Year, DateTime.Now.Month, day).ToString("MMM d yyyy (ddd)"));
            }

            DropDownList1.DataSource = dates;
            DropDownList1.DataBind();
        }
    }
}