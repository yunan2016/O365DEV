using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Html
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StringBuilder cstext2 = new StringBuilder();
            cstext2.Append("function OpenClipboard() {");
            cstext2.Append("alert('hello world');}");
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "myfunction", cstext2.ToString(), true);
        }
    }
}