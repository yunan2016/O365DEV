using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.UserControls
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
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
                gv_detailList.DataSource = dt;
                gv_detailList.DataBind();
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


            gv_detailList.DataSource = dt;
            gv_detailList.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
        public void setShow()
        {
            this.ModalPopupExtender2.Show();
        }
    }
}