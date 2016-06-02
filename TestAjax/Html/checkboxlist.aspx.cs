using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Html
{
    public partial class checkboxlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void binddatasource()
        {
           

            ListItem item = new ListItem("Att1", "1");
            item.Selected = true;
            cBList.Items.Add(item);

            ListItem item2 = new ListItem("Att2", "2");
            item2.Selected = true;
            cBList.Items.Add(item2);



        }

        protected void bind_Click(object sender, EventArgs e)
        {
            binddatasource();
        }
    }
}