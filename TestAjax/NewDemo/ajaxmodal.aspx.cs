using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.NewDemo
{
    public partial class ajaxmodal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void OKButton_Click(object sender, EventArgs e)
        {
            //do on server
            programmaticModalPopup.Hide();
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            e.Cell.Attributes["onclick"] = "popupModal('" + e.Day.Date.ToString("yyyy-MM-dd") + "');";

        }
    }
}