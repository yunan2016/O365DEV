<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TestAjax.Jquery_plugin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function test()
        {
            var someDate = new Date();
            var numberOfDaysToAdd = 6;
            someDate.setDate(someDate.getDate() + numberOfDaysToAdd);

            var dd = someDate.getDate();
            var mm = someDate.getMonth() + 1;
            var y = someDate.getFullYear();

            var someFormattedDate = dd + '/' + mm + '/' + y;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <input id="Button1123" type="button" value="button" onclick="test()" />
      <%--  <asp:ScriptManager ID="sc1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="upFund" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:DropDownList ID="drpFund" runat="server" Width="160px" AutoPostBack="true">
                    <asp:ListItem Selected="True">1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                </asp:DropDownList>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="drpFund" EventName="SelectedIndexChanged" />
            </Triggers>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="updatePanelProps" runat="server">
            <ContentTemplate>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"
            UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" /><br />
                <asp:Button ID="Button1" runat="server"
                    Text="Update Both Panels" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server"
                    Text="Update This Panel" OnClick="Button2_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server"
            UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Label ID="Label2" runat="server" ForeColor="red" />
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>--%>
    </form>
</body>
</html>
