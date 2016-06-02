using AjaxControlToolkit;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class NoBot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                NoBotState state;
                if (noBot.IsValid(out state))
                {
                    lbResult.Text = "您的信息已经被提交！";
                }
                else
                {
                    string errorMessage = string.Empty;
                    switch (state)
                    {
                        case NoBotState.InvalidAddressTooActive:
                            errorMessage = "该IP地址在短时间内提交了过多的请求。";
                            break;
                        case NoBotState.InvalidBadResponse:
                            errorMessage = "浏览器中检测脚本未被运行或运行结果不正确。";
                            break;
                        case NoBotState.InvalidBadSession:
                            errorMessage = "ASP.NET会话状态不可用。";
                            break;
                        case NoBotState.InvalidResponseTooSoon:
                            errorMessage = "两次回送时间间隔过短。";
                            break;
                        case NoBotState.InvalidUnknown:
                            errorMessage = "未知错误。";
                            break;
                    }
                    lbResult.Text = string.Format("请求被拒绝，原因：{0}", errorMessage);
                }
            }

        }

        //protected void noBot_GenerateChallengeAndResponse(object sender, NoBotEventArgs e)
        //{
        //    Panel noBotPanel = new Panel();

        //    Random rand = new Random();

        //    int width = rand.Next(80);
        //    int height = rand.Next(120);

        //    noBotPanel.ID = string.Format("noBotPanel{0}", rand.Next(1000));
        //    noBotPanel.Width = width;
        //    noBotPanel.Height = height;
        //    noBotPanel.Style.Add(HtmlTextWriterStyle.Visibility, "hidden");
        //    noBotPanel.Style.Add(HtmlTextWriterStyle.Position, "absolute");

        //    (sender as NoBot).Controls.Add(noBotPanel);

        //    e.ChallengeScript = string.Format("var noBotPanel = document.getElementById('{0}'); noBotPanel.offsetWidth * noBotPanel.offsetHeight;", noBotPanel.ClientID);

        //    e.RequiredResponse = (width * height).ToString();
        //}

    }
}