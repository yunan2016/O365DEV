<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HoverMenu.aspx.cs" Inherits="TestAjax.HoverMenu" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .HoverMenuStyle {
            filter: alpha(opacity=70); /*IE*/
            -moz-opacity: 0.7; /*MOZ , FF*/
            opacity: 0.7; /*CSS3, FF1.5*/
            background: #fff6bf;
            text-align: left;
            padding: 5px;
            border: 1px solid #ffd324;
            z-index: 1;
            color: MenuText;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <asp:Label ID="Label30" runat="server" ForeColor="Blue" Text="帮助！"></asp:Label>
            <cc1:HoverMenuExtender ID="HoverMenuExtender1" runat="server" TargetControlID="Label30" PopupControlID="pMessage" PopupPosition="Right" OffsetX="0" OffsetY="15">
            </cc1:HoverMenuExtender>
            <asp:Panel ID="pMessage" runat="server" CssClass="HoverMenuStyle" Width="300px">
                <div>
                    <div style="text-align: center">
                        <strong>使用帮助</strong>
                    </div>
                    11111111111111111111111111111
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
