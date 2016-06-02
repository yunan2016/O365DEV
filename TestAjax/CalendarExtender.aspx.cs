using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class CalendarExtender : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Lang = "ro-RO";
            System.Threading.Thread.CurrentThread.CurrentCulture =
                new System.Globalization.CultureInfo(Lang);


        }


    }
}