using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (Session["CountdownTimer"] == null)
            {
                Session["CountdownTimer"] = new CountDownTimer(TimeSpan.Parse("2:30:00"));
                (Session["CountdownTimer"] as CountDownTimer).Start();
            }
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (Session["CountdownTimer"] != null)
            {
                Label1.Text = (Session["CountdownTimer"] as CountDownTimer).TimeLeft.ToString();
            }
        }

        public class CountDownTimer
        {
            public TimeSpan TimeLeft;
            System.Threading.Thread thread;
            public CountDownTimer(TimeSpan original)
            {
                this.TimeLeft = original;
            }
            public void Start()
            {
                // Start a background thread to count down time
                thread = new System.Threading.Thread(() =>
                {
                    while (true)
                    {
                        System.Threading.Thread.Sleep(1000);
                        TimeLeft = TimeLeft.Subtract(TimeSpan.Parse("00:00:01"));
                    }
                });
                thread.Start();
            }
        }
    }
}