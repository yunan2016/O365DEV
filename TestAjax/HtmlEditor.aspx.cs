using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class HtmlEditor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int[] array = new int[] { 3, 1, 4, 5, 2 };
            Array.Sort<int>(array,
                            new Comparison<int>(
                                    (i1, i2) => i2.CompareTo(i1)
                            ));
            foreach (var item in array)
            {
                Response.Write(item);
            }


            int[] array1 = new int[] { 3, 1, 4, 5, 2 };
            Array.Sort<int>(array1,
                            new Comparison<int>(
                                    (i1, i2) => i1.CompareTo(i2)
                            ));
            foreach (var item in array1)
            {
                Response.Write(item);
            }

        }
    }
}