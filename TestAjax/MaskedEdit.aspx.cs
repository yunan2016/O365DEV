using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class MaskedEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // check if postback came through AjaxFileUpload control
            if (AjaxFileUpload1.IsInFileUploadPostBack)
            {
                // do for ajax file upload partial postback request
            }
            else
            {
                // do for normal page request
            }

        }
        protected void AjaxFileUpload1_UploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
        {
            if (e.FileSize > 10)
            {
                string filePath = e.FileName;
                AjaxFileUpload1.SaveAs(Server.MapPath(filePath));
                
            }
            else
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var a = AjaxFileUpload1.HasAttributes;
        }
    }
}