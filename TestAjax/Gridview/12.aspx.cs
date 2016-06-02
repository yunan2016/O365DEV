using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Gridview
{
    public partial class _12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                // Create a web request for an invalid site. Substitute the "invalid site" strong in the Create call with a invalid name.
                HttpWebRequest myHttpWebRequest = (HttpWebRequest)WebRequest.Create("invalid site");

                // Get the associated response for the above request.
                HttpWebResponse myHttpWebResponse = (HttpWebResponse)myHttpWebRequest.GetResponse();
                myHttpWebResponse.Close();
            }
            catch (WebException ex)
            {
                Console.WriteLine("This program is expected to throw WebException on successful run." +
                                    "\n\nException Message :" + ex.Message);
                if (ex.Status == WebExceptionStatus.ProtocolError)
                {
                    Console.WriteLine("Status Code : {0}", ((HttpWebResponse)ex.Response).StatusCode);
                    Console.WriteLine("Status Description : {0}", ((HttpWebResponse)ex.Response).StatusDescription);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}