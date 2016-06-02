<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CollapsiblePanel.aspx.cs" Inherits="TestAjax.CollapsiblePanel" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">

        .collapsePanelHeader {
            border: 1px solid #2F4F4F;
            color: white;
            background-color: #2E4d7B;
            font-family: Arial, Sans-Serif;
            font-size: 12px;
            font-weight: bold;
            padding: 5px;
            margin-top: 5px;
        }



    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div class="demoarea">
            <asp:Panel ID="Panel2" runat="server" CssClass="collapsePanelHeader">
                <div style="padding: 5px; cursor: pointer; vertical-align: middle">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <asp:ImageButton ID="Image1" runat="server"  />
                </div>
            </asp:Panel>

            <asp:Panel ID="Panel1" runat="server"  Height="0">
                <br />
                <p>
                    asdfsdasd
                </p>
            </asp:Panel>
        </div>

        <cc1:collapsiblepanelextender id="cpeDemo" runat="Server"
            targetcontrolid="Panel1"
            expandcontrolid="Panel2"
            collapsecontrolid="Panel2"
            collapsed="True"
            textlabelid="Label1"
            imagecontrolid="Image1"
            expandedtext="(Show Details...)"
            collapsedtext="(hide Details...)"
            expandedimage="Rating_default.gif"
            collapsedimage="Rating_empty.gif"
            suppresspostback="true"
            skinid="" />
        <div>
        </div>
    </form>
</body>
</html>
