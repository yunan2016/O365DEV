<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListSearchExtender.aspx.cs" Inherits="TestAjax.ListSearchExtender" %>

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
             ListBox的例子
            <asp:ListBox ID="ListBox1" runat="server" Width="120px">
                <asp:ListItem>Compaq</asp:ListItem>
                <asp:ListItem>Digital</asp:ListItem>
                <asp:ListItem>Compaq12</asp:ListItem>
                <asp:ListItem>Digital123</asp:ListItem>
                <asp:ListItem>hp</asp:ListItem>
                <asp:ListItem>HP1</asp:ListItem>
            </asp:ListBox>
            <cc1:ListSearchExtender ID="ListSearchExtender1" runat="server"
                TargetControlID="ListBox1"
                PromptPosition="Top"
                PromptText="请选择"
                BehaviorID="ListSearchExtender1" />
            <br />
            <br />
            <br />

            DropDownList的例子


            <asp:DropDownList ID="DropDownList1" runat="server" Width="100px">
                <asp:ListItem>Compaq</asp:ListItem>
                <asp:ListItem>Digital</asp:ListItem>
                <asp:ListItem>Compaq12</asp:ListItem>
                <asp:ListItem>Digital123</asp:ListItem>
                <asp:ListItem>hp</asp:ListItem>
                <asp:ListItem>HP1</asp:ListItem>
            </asp:DropDownList>
            <cc1:ListSearchExtender ID="ListSearchExtender2" runat="server" TargetControlID="DropDownList1" PromptCssClass="ListSearchExtenderPrompt"></cc1:ListSearchExtender>
        </div>
    </form>
</body>
</html>
