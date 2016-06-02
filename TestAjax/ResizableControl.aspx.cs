using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class ResizableControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FromDateTextBox_TextChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty( this.FromDateTextBox.Text))
            {
                btnStartExportRPT.Enabled=false;
            }
        }
    }
}