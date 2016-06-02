using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class convertimage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UpdatePanel up1 = (UpdatePanel)Page.Master.FindControl("UpdatePanelParent");
            System.Web.UI.WebControls.Image iprofile = (System.Web.UI.WebControls.Image)Page.Master.FindControl("iprofile");
            iprofile.ImageUrl = "~/images/images.jpg";
            up1.Update();
        }
    }
}