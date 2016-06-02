using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        public System.Web.UI.HtmlControls.HtmlForm GFIMasterForm
        {
            get
            {
                return form1;
            }
        }
       
    }
}