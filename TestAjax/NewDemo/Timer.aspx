<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Timer.aspx.cs" Inherits="TestAjax.NewDemo.Timer" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:UpdatePanel ID="saveTimerUpdatePanel" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
                <Triggers>
                </Triggers>
                <ContentTemplate>
                    <asp:Timer ID="saveTimer" runat="server" Interval="3000" OnTick="saveTimer_Tick"></asp:Timer>
                    <asp:Panel id="savedDiv" runat="server" visible="false">
                          <asp:Label ID="lblSaved" runat="server" Text="Auto-Save Successfull."></asp:Label>
                    </asp:Panel>
                    <cc1:AlwaysVisibleControlExtender ID="floatingSave" runat="server"
                        TargetControlID="savedDiv" ScrollEffectDuration=".1" HorizontalSide="Left" VerticalSide="Middle"></cc1:AlwaysVisibleControlExtender>
                </ContentTemplate>
            </asp:UpdatePanel>

        </div>
    </form>
</body>
</html>
