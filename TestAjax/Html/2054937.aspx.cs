using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.Html
{
    public partial class _2054937 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DateTime dt = new DateTime(2015, 7, 1);
            //var firstDay = FirstDayOfMonthFromDateTime(dt);
            //var endDay = LastDayOfMonthFromDateTime(dt);
        }

        public DateTime FirstDayOfMonthFromDateTime(DateTime dateTime)
        {
            return new DateTime(dateTime.Year, dateTime.Month, 1);
        }


        public DateTime LastDayOfMonthFromDateTime(DateTime dateTime)
        {
            DateTime firstDayOfTheMonth = new DateTime(dateTime.Year, dateTime.Month, 1);
            return firstDayOfTheMonth.AddMonths(1).AddDays(-1);
        }


        private void getWeek()
        {
          
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            //your code of searching date and show in control like dropdown or textarea 
        }

        protected void test_Click(object sender, EventArgs e)
        {

        }
    }
}