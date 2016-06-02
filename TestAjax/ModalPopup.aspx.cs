using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class ModalPopup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();

                dt.Columns.Add(new DataColumn("Name"));
                dt.Columns.Add(new DataColumn("sex"));
                dt.Columns.Add(new DataColumn("DateTime"));
                for (int i = 0; i < 5; i++)
                {
                    DataRow dr = dt.NewRow();
                    dr["Name"] = "test";
                    dr["sex"] = "male";
                    dt.Rows.Add(dr);
                }
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            dt.Columns.Add(new DataColumn("Name"));
            dt.Columns.Add(new DataColumn("sex"));
            dt.Columns.Add(new DataColumn("DateTime"));
            for (int i = 0; i < 5; i++)
            {
                DataRow dr = dt.NewRow();
                dr["Name"] = "test111";
                dr["sex"] = "female";
                dt.Rows.Add(dr);
            }


            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            ModalPopupExtender2.Show();
        }
        protected void btnShow_Click(object sender, EventArgs e)
        {

            ModalPopupExtender11.Show();


        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

    }
}