using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.Threading;

namespace TestAjax
{
    public partial class WebForm9 : System.Web.UI.Page
    {

        protected void Button1_Click(object sender, System.EventArgs e)
        {

           
        }

        [WebMethod]
        public static String ShowMessageInLable(string jsonstr)
        {
            

            //Dictionary<string, string> values = JsonConvert.DeserializeObject<Dictionary<string, string>>(jsonstr);
            var valueinfo = JsonConvert.DeserializeObject<EmployeeDetail>(jsonstr);
            return "";

        }


        protected void Page_Load(object sender, System.EventArgs e)
        {
                //AddCustomValidation(tbl1);

            foreach (ListItem li in this.DateListBox.Items)
                li.Selected = true;


        }

        private void AddCustomValidation(Control container)
        {
            CustomValidator custom = default(CustomValidator);

            TextBox vldtxt = default(TextBox);

            foreach (var ctrl in container.Controls)
            {
        
                if (ctrl is TextBox)
                {
                    vldtxt = (TextBox)ctrl;
                    custom = new CustomValidator();
                    custom.Text = "To field must be bigger than from field";
                    custom.ControlToValidate = vldtxt.ID;
                    custom.ID = "cust" + vldtxt.ID;
                    custom.ValidationGroup = "grp";
                    this.form1.Controls.Add(custom);     
                    custom.Display = ValidatorDisplay.Dynamic;
                    custom.ServerValidate += CustomValidation;
                }
                else
                {
                    AddCustomValidation(ctrl as Control);
                }
            }
        }


        protected void CustomValidation(System.Object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
        {

            TextBox vldtxt = default(TextBox);
            TextBox othertxt = default(TextBox);
            string othertxtid = null;
            string txtid = null;
            string lower = null;
            string higher = null;

            foreach (HtmlTableRow row in tbl1.Rows)
            {
                //Table cell in row.Cells
                foreach (HtmlTableCell cell in row.Cells)
                {
                    foreach (Control ctrl in cell.Controls)
                    {
                        vldtxt = ctrl as TextBox;
                        othertxt = ctrl as TextBox;
                        if (ctrl is TextBox)
                        {
                            //        If vldtxt IsNot Nothing Then

                            txtid = ctrl.ID;

                            if (((txtid.ToLower().EndsWith("to")) & (!string.IsNullOrEmpty(vldtxt.Text))))
                            {
                                higher = (vldtxt.Text);
                                othertxtid = vldtxt.ID.Replace("To", "From");
                                othertxt = this.Page.FindControl(othertxtid) as TextBox;
                                othertxt.ID = othertxtid;
                                lower = (othertxt.Text);
                                if (lower == string.Empty | higher == string.Empty)
                                {
                                    args.IsValid = true;
                                }

                                if (Int32.Parse(lower) >= Int32.Parse(higher))
                                {
                                    string sourceid = ((CustomValidator)source).ErrorMessage;
                                    ((CustomValidator)source).ErrorMessage = "error";
                                    args.IsValid = false;
                                    return;
                                }
                            }
                            else
                            {
                                args.IsValid = true;
                            }

                        }
                    }
                }
            }
        }

        //=======================================================
        //Service provided by Telerik (www.telerik.com)
        //Conversion powered by NRefactory.
        //Twitter: @telerik
        //Facebook: facebook.com/telerik
        //=======================================================

    }
    public class EmployeeDetail
    {

        public string Name { get; set; }

        public string[] Addresses { get; set; }

    }

}