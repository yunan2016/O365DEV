<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModalPopup.aspx.cs" Inherits="TestAjax.ModalPopup" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            font: normal 10pt/13pt Arial, Verdana, Helvetica, sans-serif;
            color: #666;
            margin: 20px;
        }

        .modalBackground {
            background-color: #000;
            filter: alpha(opacity=80);
            opacity: 0.8;
            cursor: wait;
        }

        .modalPopup-text {
            display: block;
            color: #000;
            background-color: #E6EEF7;
            text-align: center;
            border: solid 1px #73A2D6;
            padding: 10px;
        }

            .modalPopup-text input {
                width: 75px;
            }

        .feedback {
            color: #00cc00;
            font-weight: 700;
        }
    </style>
    <script src="Scripts/jquery-2.1.4.min.js"></script>
    <script type="text/javascript">
        function onYes() {

        }

        function onNo() {
            alert("12");
        }

    </script>
</head>

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>

            <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" Style="display: none">

                <div class="modalPopup-text">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <HeaderTemplate>
                            <table id="content" style="width: 100%">
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <%#Eval("Name").ToString()%></td>
                                <td>
                                    <%#Eval("Sex").ToString()%>
                                </td>
                            </tr>

                        </ItemTemplate>
                        <FooterTemplate>
                            </table>             
             
                        </FooterTemplate>
                    </asp:Repeater>
                    <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="VgLockBoxCode" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" ValidationGroup="VgLockBoxCode" ErrorMessage="11" />
                    <asp:Button ID="Button1" runat="server" Text="Yes" OnClick="Button2_Click" ValidationGroup="VgLockBoxCode" CausesValidation="true" />&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="No" />
                         <asp:Button ID="Button4" runat="server" Text="No111" OnClick="Button4_Click" />
                </div>
            </asp:Panel>

            <asp:Button ID="Button2" runat="server" Text="Delete Item" /><br />

            <cc1:ModalPopupExtender ID="ModalPopupExtender2" runat="server"
                TargetControlID="Button2"
                PopupControlID="Panel1"
                 OkControlID="Button4"
                CancelControlID="Button3"
                OnCancelScript="onNo()"
                BackgroundCssClass="modalBackground">
            </cc1:ModalPopupExtender>

        </div>
        <asp:LinkButton ID="lnkDummy" runat="server"></asp:LinkButton>

        <cc1:ModalPopupExtender ID="ModalPopupExtender11" BehaviorID="mpe" runat="server"
            PopupControlID="pnlPopup" TargetControlID="lnkDummy" BackgroundCssClass="modalBackground" CancelControlID="btnHide">
        </cc1:ModalPopupExtender>
        <asp:Panel ID="pnlPopup" runat="server" CssClass="modalPopup" Style="display: none">
            <iframe id="t" src="NumericUpDown.aspx" runat="server"></iframe>
            <br />
            <asp:Button ID="btnHide" runat="server" Text="Hide Modal Popup" />

        </asp:Panel>
        <asp:Button ID="rt" runat="server" Text="hai" OnClick="btnShow_Click" />


    </form>
</body>
</html>
