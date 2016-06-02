<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="respose.aspx.cs" Inherits="TestAjax.Html.respose" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">  
            <asp:ListItem>Visual Basic</asp:ListItem>  
            <asp:ListItem>C#</asp:ListItem>  
            <asp:ListItem>C++</asp:ListItem>  
            <asp:ListItem>Jscript</asp:ListItem>  
           <asp:ListItem>XAML</asp:ListItem>  
            <asp:ListItem>Java</asp:ListItem>  
        </asp:CheckBoxList>
            <asp:button runat="server" />
        </div>
    </form>
</body>
</html>
