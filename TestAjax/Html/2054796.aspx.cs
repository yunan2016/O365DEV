using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Html
{
    public partial class _2054796 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string json = "{\"name\":\"Joe\"}";
            Response.Clear();
            Response.Buffer = true;
            Response.ContentType = "application/json; charset=utf-8";

            Response.Write(json);
            Response.End();
        }
    }
}