<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:DropDownList ID="DropDownList1" runat="server" >
            <asp:ListItem Value="UK">UK</asp:ListItem>
            <asp:ListItem Value="UAE">UAE</asp:ListItem>
            <asp:ListItem Value="INDIA">INDIA</asp:ListItem>
            <asp:ListItem Value="HONG KONG">HONG KONG</asp:ListItem>
             <asp:ListItem Value="KENYA">KENYA</asp:ListItem>
             <asp:ListItem Value="THAILAND">THAILAND</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
