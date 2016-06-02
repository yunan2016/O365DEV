using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.UserControls
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("StartTime");

                string tm = DateTime.Now.ToString();

                dt.Rows.Add(tm);

                FormView1.DataSource = dt;
                FormView1.DataBind();
            }
        }
        //public void setLabel()
        //{
        //    this.countryInfo.setInfo();
        //}
    }
}