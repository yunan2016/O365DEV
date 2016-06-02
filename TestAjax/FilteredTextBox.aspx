<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FilteredTextBox.aspx.cs" Inherits="TestAjax.FilteredTextBox" %>

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


            <asp:TextBox ID="TextBox1" runat="server" Width="100px"></asp:TextBox>让关联的文本框只能输入大写字母<br /><br />

            <asp:TextBox  ID="TextBox2" runat="server" Width="100px"></asp:TextBox>让关联的文本框只能输入小写字母<br /><br />

            <asp:TextBox ID="TextBox3" runat="server" Width="100px"></asp:TextBox>让关联的文本框只能输入数字<br /><br />
            <asp:TextBox ID="TextBox4" runat="server" Width="100px"></asp:TextBox>只能输入oec2003<br /><br />
            <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server"
                TargetControlID="TextBox1" FilterType="UppercaseLetters"></cc1:FilteredTextBoxExtender>
            <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server"
                TargetControlID="TextBox2" FilterType="LowercaseLetters"></cc1:FilteredTextBoxExtender>
            <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server"
                TargetControlID="TextBox3" FilterType="Numbers"></cc1:FilteredTextBoxExtender>
            <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server"
                TargetControlID="TextBox4" ValidChars="oec2003" FilterType="Custom"></cc1:FilteredTextBoxExtender>
        </div>
    </form>
</body>
</html>
