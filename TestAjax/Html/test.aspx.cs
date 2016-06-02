using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TestAjax.Html
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime dt = DateTime.Now;
            var b = dt.AddMonths(1);
            DataSet ds = new DataSet();
            ds.GetXml();
        }

        protected void btnSave2_Click(object sender, EventArgs e)
        {
            if (!ValidateInputs2())
            {
                return;
            }

        }
        protected bool ValidateInputs2()
        {
            MessagePopup("aa0");
            return true;
        }
        protected void MessagePopup(string message)
        {
            ScriptManager.RegisterStartupScript(UpdatePanel1, UpdatePanel1.GetType(), "aaa", "alert('" + message.Replace("|", "\\n") + "');", true);
        }

    }
}