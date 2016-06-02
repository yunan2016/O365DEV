<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordStrength.aspx.cs" Inherits="TestAjax.PasswordStrength" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .bartype {
            color: blue;
            background-color: green;
        }

        .barborder {
            border-style: solid;
            border-width: 1px;
            width: 200px;
            vertical-align: middle;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <asp:TextBox ID="TextBox1" runat="server" Width="130px" Height="16px"  onkeypress="getPasswordStrengthState()" />
            <cc1:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="TextBox1" StrengthIndicatorType="BarIndicator" PreferredPasswordLength="12" MinimumNumericCharacters="3" MinimumSymbolCharacters="1" BarIndicatorCssClass="bartype" BarBorderCssClass="barborder"></cc1:PasswordStrength>
            <asp:Button ID="Button1" runat="server" Text="Button" style="display:none"/>
        </div>
        <script type="text/javascript" >
            function getPasswordStrengthState() {
                if ($find("PasswordStrength1")._getPasswordStrength() > 50) {
                    $get("<%=Button1.ClientID%>").style.display = '';
                 }
             }
        </script>

    </form>
</body>
</html>
