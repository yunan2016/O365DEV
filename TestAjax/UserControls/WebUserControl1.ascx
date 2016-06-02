<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="TestAjax.UserControls.WebUserControl1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<script type="text/javascript">
    function closeInfo()
    {
        $find("ModalBehaviour").hide();
    }

    function closeInfo1() {
        $find("ModalBehaviour").show();
    }
</script>
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanelGridDetail" runat="server">
    <ContentTemplate>
        <asp:Repeater ID="gv_detailList" runat="server">
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
        <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" Style="display: none">
            <input id="Button21" type="button" value="button1" onclick="closeInfo()" />
            <div class="modalPopup-text">
                changeSomething<br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Yes" OnClick="Button2_Click" />&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="No" OnClick="Button3_Click" />
            </div>
        </asp:Panel>
        <asp:Button ID="Button2" runat="server" Text="Delete Item" /><br />

        <cc1:ModalPopupExtender ID="ModalPopupExtender2" runat="server" BehaviorID="ModalBehaviour"
            TargetControlID="Button2"
            PopupControlID="Panel1"
            CancelControlID="Button3"
            OnCancelScript="onNo()"
            BackgroundCssClass="modalBackground">
        </cc1:ModalPopupExtender>
    </ContentTemplate>
</asp:UpdatePanel>
