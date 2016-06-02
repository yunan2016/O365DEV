using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.NewDemo
{
    public partial class Timer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void saveTimer_Tick(object sender, EventArgs e)
        {
            if (this.savedDiv.Visible)
            {
                this.savedDiv.Visible = false;
                this.saveTimer.Interval = 300000;
            }
            else
            {
                if (true)
                {
                    this.savedDiv.Visible = true;
                    this.saveTimer.Interval = 4000;
                }


            }
        }

    }
}