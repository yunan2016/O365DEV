<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropShadow.aspx.cs" Inherits="TestAjax.DropShadow" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DropShadow</title>
    <style type="text/css">
        .content {
            padding: 10px;
            font-family: 微软雅黑;
            font-size: 16px;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#C0C0FF" Height="450px" Width="960px">
                <div class="content">
                    <p>
                        DropShadow is an extender that applies a drop shadow to an ASP.NET Panel control.
                    The extender allows you to specify how wide the shadow is, how opaque it is, and
                    whether the shadow should have rounded corners. For pages that let the user move
                    or resize the panel, the DropShadow extender has a mode that will resize and reposition
                    the shadow to match the target panel at run time.
                    </p>

                   
                </div>
            </asp:Panel>
            <cc1:dropshadowextender id="DropShadowExtender1" runat="server" targetcontrolid="Panel1"
                opacity=".7" rounded="true" radius="12">
        </cc1:dropshadowextender>
        </div>
    </form>
</body>
</html>
