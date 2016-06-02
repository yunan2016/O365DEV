using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;

namespace TestAjax
{
    /// <summary>
    /// Summary description for Serive
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class Serive : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public string[] GetCustomers(string prefix)
        {
            List<string> customers = new List<string>();

            customers.Add(string.Format("{0}-{1}", "att11", "1"));

            customers.Add(string.Format("{0}-{1}", "att12", "2"));

            customers.Add(string.Format("{0}-{1}", "att13", "3"));

            return customers.ToArray();

        }

        [WebMethod]
        public string GetTotal()
        {



            return "True";
        }
    }
}
