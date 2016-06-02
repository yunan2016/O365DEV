using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //string smtpAddress = "smtp.mail.yahoo.com";
            //int portNumber = 587;
            //bool enableSSL = true;

            //string emailFrom = "email@yahoo.com";
            //string password = "abcdefg";
            //string emailTo = "someone@domain.com";
            //string subject = "Hello";
            //string body = "Hello, I'm just writing this to say Hi!";

            //using (MailMessage mail = new MailMessage())
            //{
            //    mail.From = new MailAddress(emailFrom);
            //    mail.To.Add(emailTo);
            //    mail.Subject = subject;
            //    mail.Body = body;
            //    mail.IsBodyHtml = true;
            //    // Can set to false, if you are sending pure text.

            //    mail.Attachments.Add(new Attachment("C:\\SomeFile.txt"));
            //    mail.Attachments.Add(new Attachment("C:\\SomeZip.zip"));

            //    using (SmtpClient smtp = new SmtpClient(smtpAddress, portNumber))
            //    {
            //        smtp.Credentials = new NetworkCredential(emailFrom, password);
            //        smtp.EnableSsl = enableSSL;
            //        smtp.Send(mail);
            //    }
            //}

        }
        protected void GridView1_PreRender(object sender, EventArgs e)
        {
            GridView1.UseAccessibleHeader = false;
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
}