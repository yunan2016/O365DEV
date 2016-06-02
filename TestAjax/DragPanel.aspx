<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DragPanel.aspx.cs" Inherits="TestAjax.DragPanel" %>

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
            <div style="height: 300px; width: 150px; float: left; padding: 5px;">
                <asp:Panel ID="PanelContenter" runat="server" Width="100%" Height="1000px">

                    <asp:Panel ID="PanelHeader" Style="cursor: move"  BorderStyle="Solid" BorderWidth="1px"
                        BorderColor="black" runat="server" Width="134px" Height="20px">
 
                            <strong>Drag Me</strong>

                    </asp:Panel>

                    <asp:Panel BorderStyle="Solid" Width="133" BackColor="#AFC5FE" ForeColor="Black"
                        Font-Size="small" BorderWidth="1px" BorderColor="black" ID="Panel9"
                        runat="server" Height="150px">

                            这个面板可拖动！

                    </asp:Panel>
                </asp:Panel>
            </div>
            <cc1:dragpanelextender id="DPE1" runat="server"
                targetcontrolid="PanelContenter"
                draghandleid="PanelHeader" />
         
        </div>
    </form>
</body>
</html>
