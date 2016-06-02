using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class _2049158 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static List<string> GetSkillSetName(string sk_code)
        {
            //List<string> result = new List<string>();
            //DataTable dtUnAppvendor = db.getSkillName(sk_code);
            //DataView dvUnAppvendor = new DataView(dtUnAppvendor);

            //foreach (DataRowView rowView in dvUnAppvendor)
            //{
            //    result.Add(rowView["sk_code"].ToString().Trim());
            //}
            List<string> ar = new List<string>();
            ar.Add("1");
            ar.Add("2");
            ar.Add("3");
            return ar;
        }

    }
}
