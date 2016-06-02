<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TestAjax.Gridview.WebForm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-2.1.4.js"></script>
    <style>
        .myclass {
            height: 50px !important;
            overflow: scroll !important;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <cc1:ComboBox ID="ComboBox1" runat="server" DropDownStyle="DropDown" OnItemInserted="ComboBox1_ItemInserted" AutoCompleteMode="SuggestAppend">
                <asp:ListItem Text="Ajax" Value="0" />
                <asp:ListItem Text="Javascript" Value="1" />
                <asp:ListItem Text="ASP.NET" Value="2" />
            </cc1:ComboBox>
        </div>
        <cc1:ComboBox ID="ComboBox2" runat="server" DropDownStyle="Simple" AutoCompleteMode="Suggest"
            DataTextField="ContactName" MaxLength="80" OnItemInserted="ComboBox2_ItemInserted" OnItemInserting="ComboBox2_ItemInserting" DataValueField="CustomerId" DataSourceID="SqlDataSource1">
        </cc1:ComboBox>
        <asp:SqlDataSource ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT CustomerId, ContactName FROM [Customers] WHERE City = @City" runat="server">
            <SelectParameters>
                <asp:Parameter DefaultValue="London" Name="City" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:HiddenField ID="HiddenField1" runat="server" />

    </form>
</body>
</html>
<script>

    //$(function () {
    //    $("ul.ajax__combobox_itemlist").addClass("myclass");
    //})
</script>
