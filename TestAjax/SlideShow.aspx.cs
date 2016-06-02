using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class SlideShow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static AjaxControlToolkit.Slide[] GetSlides()
        {
            return new AjaxControlToolkit.Slide[] { 
            new AjaxControlToolkit.Slide("images/images.jpg", "images", "images1"),
            new AjaxControlToolkit.Slide("images/Rating_default.gif", "Rating_default", "Rating_default1"),
            new AjaxControlToolkit.Slide("images/Rating_empty.gif", "Rating_empty", "Rating_empty1")};
        }
    }
}