using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Gridview
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string info = System.Web.HttpContext.Current.Session["NAME"] as String; 
                this.HiddenField1.Value = info;

            }

        }
        public string TranslateText(string input, string languagePair)
        {
            string url = String.Format("http://www.google.com/translate_t?hl=en&ie=UTF8&text={0}&langpair={1}", input, languagePair);

            WebClient webClient = new WebClient();
            webClient.Encoding = System.Text.Encoding.UTF8;
            string result = webClient.DownloadString(url);
            int len = result.Length;
            result = result.Remove(0, result.IndexOf("id=result_box"));
            int len2 = result.Length;
            result = result.Remove(result.IndexOf("</span>"));
            return "<span" + result + "</span>";


        }

        protected void ComboBox1_ItemInserted(object sender, AjaxControlToolkit.ComboBoxItemInsertEventArgs e)
        {

        }

        protected void ComboBox2_ItemInserted(object sender, AjaxControlToolkit.ComboBoxItemInsertEventArgs e)
        {

        }

        protected void ComboBox2_ItemInserting(object sender, AjaxControlToolkit.ComboBoxItemInsertEventArgs e)
        {

        }

        
    }
}