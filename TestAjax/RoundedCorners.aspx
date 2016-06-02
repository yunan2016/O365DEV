<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoundedCorners.aspx.cs" Inherits="TestAjax.RoundedCorners" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .roundedPanel {
            width: 300px;
            background-color: #5377A9;
            color: white;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <asp:Panel ID="Panel1" runat="server" Width="380px" CssClass="roundedPanel">

                <div style="padding: 10px; text-align: center">

                    <div style="padding: 5px; border: solid black thin; background-color: #B4B4B4;">

                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/images.jpg" /><br />

                    </div>

                </div>

            </asp:Panel>


            <cc1:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server"
                Color="#ff0000"
                TargetControlID="Panel1"
                Radius="10"></cc1:RoundedCornersExtender>
        </div>
    </form>
</body>
</html>
