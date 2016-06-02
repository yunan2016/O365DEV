using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{

    public partial class TextBoxWatermark : System.Web.UI.Page
    {
        static string myVar;

        public static string MyVar
        {

            get { return TextBoxWatermark.myVar; }

            set
            {
                TextBoxWatermark.myVar = "12";

            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}