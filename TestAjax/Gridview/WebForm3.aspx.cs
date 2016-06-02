using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Gridview
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
            DataSet theDataSet = new DataSet();
            var names = "Adam,John,Robert";
            string[] nameArray = names.Split(',');  

            var ds = ToDataSet(nameArray);
        }

        private DataSet ToDataSet(string[] input)
        {
            DataSet dataSet = new DataSet();
            DataTable dataTable = dataSet.Tables.Add();
            dataTable.Columns.Add("Name List", typeof(String));
            Array.ForEach(input, c => dataTable.Rows.Add()[0] = c);
            return dataSet;
        }

    }

}