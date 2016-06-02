using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        //    RequiredFieldValidator RFV = new RequiredFieldValidator();
        //    RFV.ID = "ReqValidatorCompName";
        //    RFV.ControlToValidate = compname.UniqueID;
        //    RFV.ErrorMessage = "Please enter name";
        //    Master.GFIMasterForm.Controls.Add(RFV);


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
}