<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NumericUpDown.aspx.cs" Inherits="TestAjax.NumericUpDown" %>

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
            <cc1:NumericUpDownExtender ID="NumericUpDownExtender1" runat="server" TargetControlID="Textbox1" Width="150" Maximum="10" Minimum="1" />
            <asp:TextBox ID="Textbox1" runat="server"></asp:TextBox>

            <cc1:NumericUpDownExtender ID="NumericUpDownExtender2" runat="server" TargetControlID="Textbox2" Width="150" RefValues="green;red" />
            <asp:TextBox ID="Textbox2" runat="server"></asp:TextBox>
        </div>



    </form>
</body>
</html>
