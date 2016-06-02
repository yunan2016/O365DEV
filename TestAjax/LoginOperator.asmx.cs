using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Text.RegularExpressions;
using System.Web.Script.Services;

namespace TestAjax
{
    /// <summary>
    /// Summary description for LoginOperator
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class LoginOperator : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = false)]
        public string GetFilteredComboboxes()
        {
            return "Hello World";
        }

        [WebMethod]
        public string CheckEmail(string email)
        {

            string reg = @"^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";
            if (Regex.IsMatch(email, reg))
            {
                return "";
            }
            else
            {
                return "wrong email format";
            }
        }

        [WebMethod]
        public string CheckEmail1(string email)
        {

                string reg = @"^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";
            if (Regex.IsMatch(email, reg))
            {
                return "";
            }
            else
            {
                return "wrong email format";
            }
        }

        [WebMethod]
        public void GetFormData(string amount)
         {
             System.Web.HttpContext.Current.Response.Write(
                 amount 
                 );
         }
    }
}
