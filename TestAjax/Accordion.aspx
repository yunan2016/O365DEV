<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accordion.aspx.cs" Inherits="TestAjax.WebForm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Accordion</title>
    <script src="js/Clock.js" type="text/javascript"></script>
    <style type="text/css">
        .accordion {
        }

        .accordionHeader {
            border: 1px solid #2F4F4F;
            color: white;
            background-color: #2E4d7B;
            font-family: Arial, Sans-Serif;
            font-size: 12px;
            font-weight: bold;
            padding: 5px;
            margin-top: 5px;
            cursor: pointer;
        }

        .accordionHeaderSelected {
            border: 1px solid #2F4F4F;
            color: white;
            background-color: #5078B3;
            font-family: Arial, Sans-Serif;
            font-size: 12px;
            font-weight: bold;
            padding: 5px;
            margin-top: 5px;
            cursor: pointer;
        }

        .accordionContent {
            background-color: #D3DEEF;
            border: 1px dashed #2F4F4F;
            border-top: none;
            padding: 5px;
            padding-top: 10px;
        }
    </style>

</head>


<body style="text-align: center">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <cc1:Accordion
            ID="Accordion1"
            CssClass="accordion"
            HeaderCssClass="accordionHeader"
            HeaderSelectedCssClass="accordionHeaderSelected"
            ContentCssClass="accordionContent"
            SelectedIndex="2"
            FadeTransitions="true"
            TransitionDuration="300"
            FramesPerSecond="30"
            runat="server" Height="181px">
            <Panes>
                <cc1:AccordionPane runat="server">
                    <Header>Pane 1</Header>
                    <Content>
                        content of Pane 1           
                    </Content>
                </cc1:AccordionPane>
                <cc1:AccordionPane ID="AccordionPane1" runat="server">
                    <Header>Pane 2</Header>
                    <Content>
                        content of Pane 2  
                    </Content>
                </cc1:AccordionPane>
                <cc1:AccordionPane ID="AccordionPane2" runat="server">
                    <Header>Pane 3</Header>
                    <Content>
                        content of Pane 3  
                    </Content>
                </cc1:AccordionPane>
            </Panes>
        </cc1:Accordion>

        <asp:Panel ID="Panel1" CssClass="ys1" runat="server"></asp:Panel>
        <script type="text/javascript">
            var clock = new Clock();
            clock.display(document.getElementById("Panel1"));
        </script>
      <%--  <asp:Panel ID="Panel1" CssClass="ys1" runat="server">
            <asp:ImageButton ID="ibGoTop" ImageUrl="~/images/images.jpg" runat="server" />
        </asp:Panel>--%>
        <cc1:AlwaysVisibleControlExtender ID="AlwaysVisibleControlExtender1" TargetControlID="Panel1"
            VerticalSide="top" VerticalOffset="100" HorizontalSide="right" HorizontalOffset="100"
            UseAnimation="true" runat="server" ScrollEffectDuration="0.1"></cc1:AlwaysVisibleControlExtender>
    </form>
</body>
</html>
