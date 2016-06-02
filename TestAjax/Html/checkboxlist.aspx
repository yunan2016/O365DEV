<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkboxlist.aspx.cs" Inherits="TestAjax.Html.checkboxlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBoxList runat="server" ID="cBList"></asp:CheckBoxList>
        </div>
        <asp:Button runat="server" ID="bind" OnClick="bind_Click" />
        <asp:Button runat="server" ID="submit12" />
    </form>
</body>
</html>
