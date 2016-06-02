<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="TestAjax.Gridview.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
           <%-- <ajaxToolkit:ComboBox runat="server" DropDownStyle="DropDown" AutoCompleteMode="Suggest">
                <asp:ListItem>ASP.NET</asp:ListItem>
                <asp:ListItem>VB</asp:ListItem>
                <asp:ListItem>Javascript</asp:ListItem>
            </ajaxToolkit:ComboBox>--%>
            
            <ajaxToolkit:ComboBox AutoCompleteMode="Suggest" runat="server" ID="AjaxCombo" OnItemInserted="ItemInsertedEvent" OnItemInserting="ItemInsertingEvent" AutoPostBack="True" ItemInsertLocation="Append" />

        </div>
    </form>
</body>
</html>
