<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegularExpressionValidator.aspx.cs" Inherits="TestAjax.RegularExpressionValidator" %>

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
            <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server"
                TargetControlID="RegularExpressionValidator1">
            </cc1:ValidatorCalloutExtender>
            Email Address:&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                runat="server"
                ErrorMessage="You must enter an email address" Display="None"
                ControlToValidate="TextBox1"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            </asp:RegularExpressionValidator><br />
            <asp:Button ID="Button1" runat="server" Text="Submit" />
        </div>
    </form>
</body>
</html>
