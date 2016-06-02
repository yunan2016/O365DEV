using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HtmlAgilityPack;
using System.Text.RegularExpressions;

namespace HTMLAgilityPackStartUp
{
    public partial class MyScraper : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ClickMeButton_Click(object sender, EventArgs e)
        {
            var getHtmlWeb = new HtmlWeb();
            var document = getHtmlWeb.Load(InputTextBox.Text);
            var aTags = document.DocumentNode.SelectNodes("//strong");
            int counter = 0;
            var money = string.Empty;
            if (aTags != null)
            {
                foreach (var aTag in aTags)
                {
                    if (Regex.Replace(aTag.InnerHtml, @"\s", "") == "TotalRevenue")
                    {
                        money = Regex.Replace(aTags[(counter + 1)].InnerHtml, @"\s", "").Replace("&nbsp;", "");
                    }
                 
                   counter++;
                }
            }
        }
    }
}