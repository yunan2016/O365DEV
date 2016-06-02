<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ToggleButton.aspx.cs" Inherits="TestAjax.ToggleButton" %>

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
            <cc1:MutuallyExclusiveCheckBoxExtender
                ID="MutuallyExclusiveCheckBoxExtender1" runat="server" Key="MyCheckBoxes"
                TargetControlID="CheckBox1"></cc1:MutuallyExclusiveCheckBoxExtender>
            <cc1:MutuallyExclusiveCheckBoxExtender
                ID="MutuallyExclusiveCheckBoxExtender2" runat="server" Key="MyCheckBoxes"
                TargetControlID="CheckBox2"></cc1:MutuallyExclusiveCheckBoxExtender>
            <cc1:ToggleButtonExtender ID="ToggleButtonExtender1" runat="server"
                TargetControlID="CheckBox1" UncheckedImageUrl="Images/Rating_empty.gif"
                CheckedImageUrl="Images/Rating_default.gif" CheckedImageAlternateText="Checked"
                UncheckedImageAlternateText="Not Checked" ImageWidth="25"
                ImageHeight="25"></cc1:ToggleButtonExtender>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="&nbsp;Option One" />
            <cc1:ToggleButtonExtender ID="ToggleButtonExtender2" runat="server"
                TargetControlID="CheckBox2" UncheckedImageUrl="Images/Rating_empty.gif"
                CheckedImageUrl="Images/Rating_default.gif" CheckedImageAlternateText="Checked"
                UncheckedImageAlternateText="Not Checked" ImageWidth="25"
                ImageHeight="25"></cc1:ToggleButtonExtender>
            <asp:CheckBox ID="CheckBox2" runat="server" Text="&nbsp;Option Two" />
        </div>
    </form>
</body>
</html>
