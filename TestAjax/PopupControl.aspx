<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PopupControl.aspx.cs" Inherits="TestAjax.PopupControl" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .popupControl {
            background-color: #AAD4FF;
            position: absolute;
            visibility: hidden;
            border-style: solid;
            border-color: Black;
            border-width: 2px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <asp:TextBox ID="MyTextBox" runat="server" Width="538px"></asp:TextBox>
            <br />
            <asp:Panel ID="Panel1" runat="server" CssClass="popupControl">

                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged"
                            Width="146px">
                            <asp:ListItem Text="Scott Guthrie"></asp:ListItem>
                            <asp:ListItem Text="Simon Muzio"></asp:ListItem>
                            <asp:ListItem Text="Brian Goldfarb"></asp:ListItem>
                            <asp:ListItem Text="Joe Stagner"></asp:ListItem>
                            <asp:ListItem Text="Shawn Nandi"></asp:ListItem>
                        </asp:RadioButtonList>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </asp:Panel>
            <br />
            <cc1:PopupControlExtender ID="PopupControlExtender1" runat="server" CommitProperty="value"
                CommitScript="e.value += ' - SEND A MEETING REQUEST!';" PopupControlID="Panel1"
                Position="Bottom" TargetControlID="MyTextBox">
            </cc1:PopupControlExtender>
        </div>
    </form>
</body>
</html>
