<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TabPanel.aspx.cs" Inherits="TestAjax.TabPanel" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit"
    TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.4.min.js"></script>
    <style>
       
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div>
            <cc1:TabContainer ID="TabContainer1" runat="server" Height="300px">
                <cc1:TabPanel ID="TabPanel1" runat="server">
                    <HeaderTemplate>Tab 1</HeaderTemplate>
                    <ContentTemplate>Here is some tab one content.</ContentTemplate>
                </cc1:TabPanel>
                <cc1:TabPanel ID="TabPanel2" runat="server">
                    <HeaderTemplate>Tab 2</HeaderTemplate>
                    <ContentTemplate>Here is some tab two content.</ContentTemplate>
                </cc1:TabPanel>
                <cc1:TabPanel ID="TabPanel3" runat="server">
                    <HeaderTemplate>Tab 3</HeaderTemplate>
                    <ContentTemplate>Here is some tab three content.</ContentTemplate>
                </cc1:TabPanel>
            </cc1:TabContainer>
            <asp:ListBox ID="DateListBox" runat="server" AppendDataBoundItems="True" SelectionMode="Multiple">
                <asp:ListItem Text="Select All" Value="1" />
                <asp:ListItem Text="01 Feb 2015" Value="2" />
                <asp:ListItem Text="01 Mar 2015" Value="3" />
                <asp:ListItem Text="01 Apr 2015" Value="4" />
            </asp:ListBox>
            <asp:DropDownList AutoPostBack="true" ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Text="Select All" Value="1" />
                <asp:ListItem Text="01 Feb 2015" Value="2" />
                <asp:ListItem Text="01 Mar 2015" Value="3" />
                <asp:ListItem Text="01 Apr 2015" Value="4" />
            </asp:DropDownList>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
