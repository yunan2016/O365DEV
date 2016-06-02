using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Html
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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

                GridView1.DataSource = tblDatas;
                GridView1.DataBind();
            }
          

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            

        }

    }
}