using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Html
{
    public partial class _2053729 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                System.Threading.Thread.Sleep(2000);//延迟响应时间
            }
            DataTable dt = new DataTable();

            dt.Columns.Add(new DataColumn("Name"));
            dt.Columns.Add(new DataColumn("sex"));
            dt.Columns.Add(new DataColumn("DateTime"));
            for (int i = 0; i < 5; i++)
            {
                DataRow dr = dt.NewRow();
                dr["Name"] = "http://www.my400800.cn";
                dr["sex"] = "男";
                dr["DateTime"] = Convert.ToString(DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
                dt.Rows.Add(dr);
            }


            gv_detailList.DataSource = dt;
            gv_detailList.DataBind();

        }

        public string GenerateAttachmentLink2(string FilePath)
        { 
           return String.Format("<a href='{0}'>View Attachment</a>", ResolveUrl(FilePath.ToString()));

        }

    }
}