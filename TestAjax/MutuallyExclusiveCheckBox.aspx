<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MutuallyExclusiveCheckBox.aspx.cs" Inherits="TestAjax.MutuallyExclusiveCheckBox" %>

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
            <asp:CheckBox ID="net" runat="server" Text="net" />
            <asp:CheckBox ID="jsp" runat="server" Text="jsp" /><br />
            <asp:CheckBox ID="aspnet" runat="server" Text="aspnet" />
            <asp:CheckBox ID="java" runat="server" Text="java" />
            <cc1:MutuallyExclusiveCheckBoxExtender ID="MutuallyExclusiveCheckBoxExtender1" runat="server"
                Key="one" TargetControlID="net"></cc1:MutuallyExclusiveCheckBoxExtender>
            <cc1:MutuallyExclusiveCheckBoxExtender ID="MutuallyExclusiveCheckBoxExtender2" runat="server"
                Key="two" TargetControlID="jsp"></cc1:MutuallyExclusiveCheckBoxExtender>
            <cc1:MutuallyExclusiveCheckBoxExtender ID="MutuallyExclusiveCheckBoxExtender3" runat="server"
                TargetControlID="aspnet" Key="two"></cc1:MutuallyExclusiveCheckBoxExtender>
            <cc1:MutuallyExclusiveCheckBoxExtender ID="MutuallyExclusiveCheckBoxExtender4" runat="server" TargetControlID="java" Key="one"></cc1:MutuallyExclusiveCheckBoxExtender>

        </div>
    </form>
</body>
</html>
