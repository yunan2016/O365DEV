using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Page.Title;
        }

        protected void Btn_AddnewUser_Click(object sender, EventArgs e)
        {

        }

        protected void Btn_save_Click(object sender, EventArgs e)
        {
            txtfirstname.Text = "aa";
        }

        protected void Btn_back_Click(object sender, EventArgs e)
        {

        }

        protected void Btn_cancel_Click(object sender, EventArgs e)
        {

        }
    }
}