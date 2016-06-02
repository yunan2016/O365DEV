using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.NewDemo
{
    public partial class test : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            HiddenField1.Value = "John";
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


            string Test = "Customer, Member (Regular)";
            var arrIntegrity = Test.Split(',');

            for (int i = 0; i < arrIntegrity.Length; i++)
            {

                switch (arrIntegrity[i].ToString())
                {
                    case "Customer":
                        //pdfFormFields.SetField("Customer", "Yes");
                        break;
                    case " Member (Regular)":
                        //pdfFormFields.SetField("Member", "Yes");
                        break;
                    case "Non-Member":
                        //pdfFormFields.SetField("Non-Member", "Yes");
                        break;
                    default:
                        break;

                }

            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (ListItem item in RadioButtonList1.Items)
            {

                item.Enabled =true;
            }      
        }



      

    }
}