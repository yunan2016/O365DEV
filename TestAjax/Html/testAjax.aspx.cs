using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Html
{
    public partial class testAjax : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static String ShowMessageInLable()
        {
            return "This message is from server.";
        }

        protected void setcallback_Click(object sender, EventArgs e)
        {
            this.lblMessage.Text = this.HiddenField1.Value;
        }

        protected void txtbox_TextChanged(object sender, EventArgs e)
        {
            string url = "Your_page_url";

            string s = "alert('Not Available.'); window.open('" + url + "', 'popup_window', 'width=300,height=100,left=100,top=100,resizable=yes');";

            ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);
        }
    }
}