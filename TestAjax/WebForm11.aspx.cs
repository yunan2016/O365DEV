using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void AjaxFileUpload1_UploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
        {
            try
            {
                string savePath = MapPath("~/Images/" + e.FileName);
                // dont save file & return if condition not matched.
                    if (e.FileSize > 72000) // use same condition in client side code
                {
                    return;
                }
                AjaxFileUpload1.SaveAs(savePath);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}