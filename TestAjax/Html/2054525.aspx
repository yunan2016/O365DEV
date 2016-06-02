<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2054525.aspx.cs" Inherits="TestAjax.Html._2054525" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>

                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>

                </ItemTemplate>
                <FooterTemplate>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
