<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlwaysVisibleControl.aspx.cs" Inherits="TestAjax.AlwaysVisibleControl" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple AlwaysVisible</title>
    <style type="text/css">
        html {
            background-color: #cccccc;
        }

        .staticPanel {
            width: 150px;
            background-color: White;
            border: solid 1px black;
            padding: 10px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <asp:Panel ID="Panel1" CssClass="staticPanel" runat="server">
                <h2>Hello World!</h2>
            </asp:Panel>
           
            <cc1:AlwaysVisibleControlExtender
                ID="AlwaysVisibleControlExtender1"
                TargetControlID="Panel1"
                VerticalSide="Top"
                VerticalOffset="10"
                HorizontalSide="Right"
                HorizontalOffset="10"
                runat="server" />

            <p>
               1111111111111111111111111111111111111111111111111111
            </p>
            <p>
               222222222222222222222222222222222222222222222222222222
            </p>
            <p>
              333333333333333333333333333333333333333333333333333333
            </p>
            <div>
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>
                     &nbsp;&nbsp;
                     
                     <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                 </ContentTemplate>
             </asp:UpdatePanel>
             <asp:Panel ID="Panel2" runat="server" Height="50px" Width="125px">
                 <img src="Green1.jpeg" />Hello Always Visible</asp:Panel>
             <cc1:AlwaysVisibleControlExtender 
             ID="AlwaysVisibleControlExtender2" 
              HorizontalOffset="20" VerticalOffset ="30"
               HorizontalSide="Right" VerticalSide ="Middle" 
                TargetControlID ="Panel2" ScrollEffectDuration =".1"
                
             runat="server">
             </cc1:AlwaysVisibleControlExtender>
             &nbsp;
             &nbsp;&nbsp;
             <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
             <ProgressTemplate >
                 <img src="ajax-loader.gif" />Updating.............
             </ProgressTemplate>
             </asp:UpdateProgress>
             </div>
        </div>
    </form>
</body>
</html>
