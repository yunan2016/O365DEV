<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="validition.aspx.cs" Inherits="TestAjax.Html.validition" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                runat="server" ErrorMessage="Enter valid Organization Name"
                ControlToValidate="txtname"
                ForeColor="Red"
                ValidationExpression=".*[\da-zA-Z]+.*">
            </asp:RegularExpressionValidator>
        </div>
    </form>
</body>
</html>
