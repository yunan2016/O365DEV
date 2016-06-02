using AjaxControlToolkit;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //MyTextBox.Text = ((System.Web.UI.WebControls.ListControl)(sender)).SelectedValue;
            if (!string.IsNullOrEmpty(RadioButtonList1.SelectedValue))
            {
                // Popup result is the selected task
                PopupControlExtender1.Commit(RadioButtonList1.SelectedValue);
            }
            else
            {
                // Cancel the popup
                PopupControlExtender1.Cancel();
            }
            // Reset the selected item
            RadioButtonList1.ClearSelection();
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            this.PopupControlExtender1.TargetControlID = "TextBox1";
            this.TextBox1.Focus();

        }

    }
}