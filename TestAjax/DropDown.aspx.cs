using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class DropDown : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void OnSelect(object sender, EventArgs e)
        {

            TextBox1.Text = ((LinkButton)sender).Text;

        }
    }
}