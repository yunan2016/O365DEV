<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajaxmodal.aspx.cs" Inherits="TestAjax.NewDemo.ajaxmodal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style>
        .modalBackground {
            background-color: Gray;
            filter: alpha(opacity=60);
            opacity: 0.6;
        }

        .modalPopup {
            background-color: #ffffdd;
            border-width: 3px;
            border-style: solid;
            border-color: Gray;
            padding: 3px;
            width: 250px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <script type="text/javascript">
            function popupModal(value) {


                $get('<%=Label1.ClientID %>').innerText = value;
                $get('<%=TextBox1.ClientID %>').innerText = value;
                var element = document.getElementById("ddlp");
                element.value = "02";
                $find('programmaticModalPopupBehavior').show();
            }
        </script>


        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender"></asp:Calendar>
                update at <%=DateTime.Now %>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="OKButton" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>


        <asp:Button runat="server" ID="hiddenTargetControlForModalPopup" Style="display: none" />
        <ajaxToolkit:ModalPopupExtender runat="server" ID="programmaticModalPopup" BehaviorID="programmaticModalPopupBehavior"
            TargetControlID="hiddenTargetControlForModalPopup" PopupControlID="programmaticPopup" CancelControlID="CancelButton"
            BackgroundCssClass="modalBackground" DropShadow="True" RepositionMode="RepositionOnWindowScroll">
        </ajaxToolkit:ModalPopupExtender>
        <asp:Panel runat="server" CssClass="modalPopup" ID="programmaticPopup" Style="background-color: ##FFFFCC; display: none; height: 125px; width: 225px; padding: 10px">
            this is
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:Button ID="OKButton" runat="server" Text="OK" OnClick="OKButton_Click" />
            <asp:Button ID="CancelButton" runat="server" Text="Cancel" />
            <asp:DropDownList ID="ddlp" runat="server">
                <asp:ListItem Value="01">1</asp:ListItem>
                <asp:ListItem Value="02">2</asp:ListItem>
            </asp:DropDownList>

        </asp:Panel>
    </form>
</body>
</html>
