using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.NewDemo
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PoItem poItem = new PoItem();
            poItem.po_ItemID = 1;
            poItem.purchaseOrderID = 1;
            poItem.productID = 1;
            poItem.quantity = 1;
            List<PoItem> result = new List<PoItem>();
            result.Add(poItem);
            gvPoItem.DataSource = result;
            gvPoItem.DataBind();

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
            Repeater1.DataSource = tblDatas;
            Repeater1.DataBind();
        }


    }
    public class PoItem
    {
       public int po_ItemID { get; set; }
       public int purchaseOrderID { get; set; }
       public int productID { get; set; }
       public int quantity { get; set; }
    }
}