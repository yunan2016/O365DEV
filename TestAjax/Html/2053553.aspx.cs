using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Html
{
    public partial class _2053553 : System.Web.UI.Page
    {
        TextBox tx;
        protected void Page_Init(object sender, EventArgs e) // Previously I had Page_Load here
        {
            //ServiceReference code Webservice
            tx = new TextBox();

            string text = string.Empty;

            switch (text ?? String.Empty)
            {
                case "":
                    break;
                case "hi":
                    break;
            }

        } // 
        protected void Page_Load(object sender, EventArgs e)
        {
            tx.Text = "123";
        }
    }
}