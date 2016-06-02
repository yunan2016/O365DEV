<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePanelAnimation.aspx.cs" Inherits="TestAjax.UpdatePanelAnimation" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>
<script runat="server">
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label1.Text = "The date selected is " +
           Calendar1.SelectedDate.ToLongDateString();
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <cc1:UpdatePanelAnimationExtender ID="UpdatePanelAnimationExtender1"
                runat="server" TargetControlID="UpdatePanel1">
                <Animations>
                <OnUpdated>
                    <Sequence>
                        <Color PropertyKey="background" StartValue="#999966" 
                         EndValue="#FFFFFF" Duration="5.0" />
                    </Sequence>
                </OnUpdated>
                </Animations>
            </cc1:UpdatePanelAnimationExtender>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server"></asp:Label><br />
                    <asp:Calendar ID="Calendar1" runat="server"
                        OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
