using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Html
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void myButton_Click(object sender, EventArgs e)
        {
            frmaa.Attributes.Remove("src");
            frmaa.Attributes.Add("src", "WebForm3.aspx");

        }
    }
}