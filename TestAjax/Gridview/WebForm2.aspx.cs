using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Gridview
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        public void ItemInsertedEvent(object sender, AjaxControlToolkit.ComboBoxItemInsertEventArgs e)
        {

            // read from your data table in this event and bind the data to the combo boxs
        }

        public void ItemInsertingEvent(object sender, AjaxControlToolkit.ComboBoxItemInsertEventArgs e)
        {
            string itemToBeInserted = e.Item.Value;
            // make a call to add this item to your data table
        }
    }
}