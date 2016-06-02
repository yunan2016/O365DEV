using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class checkEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.tbContent.Text = "<html>1232132 h1 111 \r\n <h1>" ;
        }
    }
}