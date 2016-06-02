using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.UserControls
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.setLabel("hhh");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpWebRequest myHttpWebRequest = (HttpWebRequest)WebRequest.Create("http://www.contoso.com");
            myHttpWebRequest.MaximumAutomaticRedirections = 1;
            myHttpWebRequest.AllowAutoRedirect = true;
            HttpWebResponse myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse();  
        }
    }
}