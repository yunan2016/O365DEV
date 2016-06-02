using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax.AjaxtoolKit
{
    public partial class _2054436 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            mpRoomBooked.Hide();
        }

        protected void btnSaveRoomBoked_Click(object sender, EventArgs e)
        {
            txtRoomBookedStartDate.Text = "2";
        }
    }
}