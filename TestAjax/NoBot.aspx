<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NoBot.aspx.cs" Inherits="TestAjax.NoBot" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <asp:TextBox ID="tbSomething" runat="server"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
            <asp:Label ID="lbResult" runat="server"></asp:Label>
            <cc1:NoBot ID="noBot" CutoffWindowSeconds="10" CutoffMaximumInstances="2"
                ResponseMinimumDelaySeconds="2"
           
                runat="server" />

        </div>
    </form>
</body>
</html>
