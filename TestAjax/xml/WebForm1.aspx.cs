using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace TestAjax.xml
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //XmlDocument xmlDoc = new XmlDocument();
            //xmlDoc.Load(@"D:\title.xml");
            //XmlNodeList xnl = xmlDoc.GetElementsByTagName("Details");       
            //foreach (XmlNode xn in xnl)
            //{
            //    XmlNode node = xmlDoc.CreateNode(XmlNodeType.Element, "picture", null);
            //    node.InnerText = "nophoto.gif";
            //    xn.AppendChild(node);
            //}
            //xmlDoc.Save(@"D:\title.xml");


            var v = Convert.ToDecimal((3 / 2).ToString("0.0000")) * 100;

     
        }
        public class SampleData
        {
            public string Text { get; set; }
            public string Value { get; set; }
        
        }


        
    }
}