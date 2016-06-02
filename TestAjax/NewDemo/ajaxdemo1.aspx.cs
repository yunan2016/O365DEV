using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.NewDemo
{
    public partial class ajaxdemo1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string urp = "test me";
        protected void SubmitButton_Click(object sender, EventArgs s)
        {
          
            ClientScript.RegisterStartupScript(this.GetType(), "JsModal", "DisplayModal('" + urp + "','02')", true);
        }


        protected void lkn_check_onclick(object sender, EventArgs e)
        {
            string p = txt1.Text.Trim();
            string z = ddlp.SelectedItem.Value;
        }

    }
}