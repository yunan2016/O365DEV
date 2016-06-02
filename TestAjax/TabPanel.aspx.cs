using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class TabPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (ListItem li in this.DateListBox.Items)
                li.Selected = true;

            addpanel();


        }

        private void addpanel()
        {

            AjaxControlToolkit.TabContainer container = new AjaxControlToolkit.TabContainer();
            container.ID = DateTime.Now.Millisecond.ToString();
            container.EnableViewState = false;
            container.Tabs.Clear();
            container.Height = Unit.Pixel(500);
            container.Width = Unit.Pixel(1200);

            if (DateListBox.Items[0].Selected)
            {
                foreach (ListItem item in DateListBox.Items)
                {
                    if (item.Value=="1")
                    {
                        continue;
                    }
                    Label tabContent = new Label();
                    tabContent.ID = "lbl_tab_";
                    tabContent.Text += item.Value;

                    AjaxControlToolkit.TabPanel panel = new AjaxControlToolkit.TabPanel();
                    panel.HeaderText += item.Text;
                    container.Tabs.Add(panel);
                    panel.Controls.Add(tabContent);

                }
            }
            else
            {
                foreach (ListItem item in DateListBox.Items)
                {

                    if (item.Selected)
                    {
                        Label tabContent = new Label();
                        tabContent.ID = "lbl_tab_";
                        tabContent.Text += item.Value;

                        AjaxControlToolkit.TabPanel panel = new AjaxControlToolkit.TabPanel();
                        panel.HeaderText += item.Text;
                        container.Tabs.Add(panel);
                        panel.Controls.Add(tabContent);
                    }

                }
            }

            PlaceHolder1.Controls.Add(container);
        }
        public AjaxControlToolkit.TabPanel GetManualTab()
        {
            AjaxControlToolkit.TabPanel panel = new AjaxControlToolkit.TabPanel();
            return panel;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (object obj in TabContainer1.Controls)
            {
                if (obj is AjaxControlToolkit.TabPanel)
                {
                    AjaxControlToolkit.TabPanel tabPanel = (AjaxControlToolkit.TabPanel)obj;
                
                    Bitmap m_Bitmap = new Bitmap(1200, 500);

                    Graphics graphics = Graphics.FromImage(m_Bitmap as System.Drawing.Image);
                    graphics.CopyFromScreen(0, 0, 0, 0, m_Bitmap.Size);

                    m_Bitmap.Save(@"D:\" + tabPanel.HeaderText + ".jpg", System.Drawing.Imaging.ImageFormat.Jpeg);
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            AjaxControlToolkit.TabContainer container = new AjaxControlToolkit.TabContainer();
            container.ID = DateTime.Now.Millisecond.ToString();
            container.EnableViewState = false;
            container.Tabs.Clear();
            container.Height = Unit.Pixel(500);
            container.Width = Unit.Pixel(1200);
            Label tabContent = new Label();
            tabContent.ID = "lbl_tab_";
            tabContent.Text += this.DropDownList1.SelectedValue;

            AjaxControlToolkit.TabPanel panel = new AjaxControlToolkit.TabPanel();
            panel.HeaderText += this.DropDownList1.SelectedValue;
            container.Tabs.Add(panel);
            panel.Controls.Add(tabContent);
            PlaceHolder2.Controls.Add(container);
        }
    }
}