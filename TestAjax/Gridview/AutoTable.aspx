<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutoTable.aspx.cs" Inherits="TestAjax.Gridview.AutoTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="CustomerID" runat="server"></asp:TextBox>
            <asp:Button id="search" runat="server" OnClick="search_Click" Text="search" />
            <asp:PlaceHolder ID="PlaceHolder1" runat="server" />
        </div>
    </form>
</body>
</html>
