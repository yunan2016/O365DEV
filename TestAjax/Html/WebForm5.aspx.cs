using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Html
{
    public partial class WebForm5 : System.Web.UI.Page
    {

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            this.TextBox1.Text = "";
        }
    }
}