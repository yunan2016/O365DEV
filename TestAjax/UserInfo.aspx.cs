using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class UserInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            PlaceHolder1.Controls.Add(new LiteralControl(@"<b>Sign up for our newsletter</b><br />
Your name:<br />"));

            TextBox tbName = new TextBox();
            tbName.ID = "tbName";
            PlaceHolder1.Controls.Add(tbName);

            PlaceHolder1.Controls.Add(new LiteralControl("<br />Email:<br />"));
            TextBox tbEmail = new TextBox();
            tbEmail.ID = "tbEmail";
            PlaceHolder1.Controls.Add(tbEmail);
            PlaceHolder1.Controls.Add(new LiteralControl("<br />"));

            Button btnSubmit = new Button();
            btnSubmit.ID = "btnSubmit";
            btnSubmit.Text = "Submit";
            btnSubmit.Click += new EventHandler(btnSubmit_Click);
            PlaceHolder1.Controls.Add(btnSubmit);
        }

        void btnSubmit_Click(object sender, EventArgs e)
        {
            // do something...

        }
    }
}