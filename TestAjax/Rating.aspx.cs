using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class Rating : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RatingRate_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
        {
            System.Threading.Thread.Sleep(300);
            //TODO: Save e.Value to database. 
            e.CallbackResult = "success";
        }
    }
}