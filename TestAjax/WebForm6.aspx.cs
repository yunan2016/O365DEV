using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestAjax
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        //    RequiredFieldValidator RFV = new RequiredFieldValidator();
        //    RFV.ID = "ReqValidatorCompName";
        //    RFV.ControlToValidate = compname.UniqueID;
        //    RFV.ErrorMessage = "Please enter name";
        //    Master.GFIMasterForm.Controls.Add(RFV);


            DataTable tblDatas = new DataTable("Datas");
            DataColumn dc = null;
            dc = tblDatas.Columns.Add("Att1", Type.GetType("System.String"));
            dc = tblDatas.Columns.Add("Att2", Type.GetType("System.String"));

            DataRow newRow;
            newRow = tblDatas.NewRow();
            newRow["Att1"] = "ATT1";
            newRow["Att2"] = "ATT2";
            tblDatas.Rows.Add(newRow);

            newRow = tblDatas.NewRow();
            newRow["Att1"] = "ATT1.1";
            newRow["Att2"] = "ATT2.1";
            tblDatas.Rows.Add(newRow);
            GridView1.DataSource = tblDatas;
            GridView1.DataBind();


       


            if (!IsPostBack)
            {
                Button btnEdit = new Button();
                btnEdit.ID = "btnEdit_" + "1";
                btnEdit.CommandName = "EditBtn";
                btnEdit.Text = "Edit";
                btnEdit.CommandArgument = "1";
                btnEdit.UseSubmitBehavior = true;
                btnEdit.Click += new EventHandler(btnActionID_Click);
                btnEdit.ControlStyle.CssClass = "button";
                placv1.Controls.Add(btnEdit);

                //Create DataTable this can be from database also.
                DataTable dtName = new DataTable();

                //Add Columns to Table
                dtName.Columns.Add(new DataColumn("DisplayMember"));
                dtName.Columns.Add(new DataColumn("ValueMember"));

                //Now Add Values
                dtName.Rows.Add("Suits", "0");
                dtName.Rows.Add("Harvey Spector", "1");
                dtName.Rows.Add("Jessica Pearson", "2");
                dtName.Rows.Add("Mike Ross", "3");
                dtName.Rows.Add("Donna Paulson", "4");
                dtName.Rows.Add("Rachel", "5");
                ddlSPUNo.DataSource = dtName;
                ddlSPUNo.DataTextField = dtName.Columns["DisplayMember"].ToString();
                ddlSPUNo.DataValueField = dtName.Columns["ValueMember"].ToString();
                ddlSPUNo.DataBind();
            }
            //At Last Bind datatable to dropdown.
         
        }
        protected void btnActionID_Click(object sender, EventArgs e)
        {

        }
        protected void ddlSPUNo_Change(object sender, EventArgs e)
        {

        }

        protected void mymenu_MenuItemClick(object sender, MenuEventArgs e)
        {
            // this is the menu itself, you can iterate the Items collection if you need.
            var menu = (sender as Menu);
            foreach (MenuItem item in menu.Items)
            {
                System.Diagnostics.Debug.Print(item.Text);
            }

            // this is the MenuItem object that was clicked
            var clickedMenuItem = e.Item;

            // store text value in your session
            Session["1"] = e.Item.Value;


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}