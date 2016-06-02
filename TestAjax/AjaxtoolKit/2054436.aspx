<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2054436.aspx.cs" Inherits="TestAjax.AjaxtoolKit._2054436" %>

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
            <asp:Label ID="lbBokedRum" runat="server">111111111111</asp:Label>
            <cc1:ModalPopupExtender ID="mpRoomBooked" runat="server" DropShadow="false" PopupControlID="pnRooms"
                BackgroundCssClass="pnmodalBackground" TargetControlID="lbBokedRum">
            </cc1:ModalPopupExtender>
            <asp:Panel ID="pnRooms" runat="server" CssClass="pnmodalPopup" Style="display: block;">
                <div class="pnheader">
                    Välj rum:
                </div>
                <input type="button" onclick="location.href = 'WebForm1.aspx';" value="Go to another page" />
                <div class="pnbody">
                    <table cellpadding="0" cellspacing="0" class="auto-style2">
                        <tr>
                            <td colspan="2">
                                <asp:UpdatePanel ID="upRoomBoked" runat="server">
                                    <ContentTemplate>
                                        <table cellpadding="0" cellspacing="0" class="auto-style2">
                                            <tr>
                                                <td style="width: 30%; text-align: left; vertical-align: top; padding-left: 2%;">Rum:
                                                </td>
                                                <td style="width: 70%; text-align: left; vertical-align: top; padding-left: 2%;">
                                                    <asp:DropDownList ID="ddRoomList" runat="server" DataTextField="roomName" DataValueField="ID"></asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 30%; text-align: left; vertical-align: top; padding-left: 2%;">Datum:
                                                </td>
                                                <td style="width: 70%; text-align: left; vertical-align: top; padding-left: 2%;">
                                                    <asp:TextBox ID="txtRoomBookedStartDate" runat="server" Width="30%"></asp:TextBox>
                                                    <cc1:CalendarExtender ID="ceTxtRoomBookedStartDate" runat="server" TargetControlID="txtRoomBookedStartDate"></cc1:CalendarExtender>
                                                    &nbsp;-&nbsp;
                                            <asp:TextBox ID="txtRoomBookedEndDate" runat="server" Width="30%"></asp:TextBox>
                                                    <cc1:CalendarExtender ID="ceTxtRoomBookedEndDate" runat="server" TargetControlID="txtRoomBookedEndDate"></cc1:CalendarExtender>
                                                    &nbsp;
                                            <asp:Button ID="btnChooseRoomBoked" runat="server" Text="Välj" />
                                                </td>
                                            </tr>
                                        </table>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="btnSaveRoomBoked" EventName="click" />
                                    </Triggers>
                                </asp:UpdatePanel>

                            </td>
                        </tr>
                        <tr>
                            <td style="width: 30%; text-align: left; vertical-align: top; padding-left: 2%;"></td>
                            <td style="width: 70%; text-align: left; vertical-align: top; padding-left: 2%;">
                                <asp:Button ID="btnSaveRoomBoked" runat="server" Text="Spara" OnClick="btnSaveRoomBoked_Click" />
                                &nbsp;
                            <asp:Button ID="btnSaveRooBokedCanel" runat="server" Text="Avbryt" />
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="pnfooter">
                    <asp:Label ID="lbRoomBookedMessage" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
