using AjaxControlToolkit;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.UserControls
{
    public partial class U_Label : System.Web.UI.UserControl
    {
        public string Country
        {
            get
            {
                return this.lblCountry.Text;
            }
            set
            {
                lblCountry.Text = value;
            }
        }

        public string EmailAddress
        {
            get
            {
                return hfEmail.Value;
            }
        }
        public void setInfo()
        {
            this.lblCountry.Text = "hhhh";
        }

    
    }
}