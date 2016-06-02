using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class DynamicPopulate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [System.Web.Services.WebMethod()]
        [System.Web.Script.Services.ScriptMethod()]
        public static string GetHtml(string contextKey)
        {
            System.Threading.Thread.Sleep(250);
            string value = (contextKey == "U") ? DateTime.UtcNow.ToString() : String.Format("{0:" + contextKey + "}", DateTime.Now);
            return value;
        }
    }
}