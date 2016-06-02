<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResizableControl.aspx.cs" Inherits="TestAjax.ResizableControl" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .frameImage {
            overflow: hidden;
            float: left;
            padding: 3px;
        }

        .handleImage {
            width: 20px;
            height: 30px;
            background-image: url(../img/HandleHand.png);
            background-repeat: no-repeat;
            overflow: hidden;
        }

        .resizingImage {
            padding: 0px;
            border-style: solid;
            border-width: 2px;
            border-color: Fuchsia;
            overflow: hidden;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:UpdatePanel runat="server">
            <ContentTemplate>

                <div>
            <asp:Label ID="litlblFrom" Font-Bold="true" CssClass="LabelFilterSelection" runat="server" Text="from" />
            <asp:TextBox CssClass="DateTextFilterSelection" AutoPostBack="true" runat="server" ID="FromDateTextBox" OnTextChanged="FromDateTextBox_TextChanged" >
            </asp:TextBox>
            <img class="ImageFixedSize" id="FromCalendarButton" src="../../images/calendar.jpg"
                alt="" />
            <cc1:CalendarExtender ID="FromCalendarExtender" runat="server" TargetControlID="FromDateTextBox"
                PopupButtonID="FromCalendarButton" ></cc1:CalendarExtender>

            <asp:Label ID="litlblTo" CssClass="LabelFilterSelectionNoWidth" runat="server" Font-Bold="true" Text="to" />
            <asp:TextBox CssClass="DateTextFilterSelection" runat="server" ID="ToDateTextBox"></asp:TextBox>
            <img class="ImageFixedSize" id="ToCalendarButton" src="../../images/calendar.jpg"
                alt="" />
            <cc1:CalendarExtender ID="ToCalendarExtender" runat="server" TargetControlID="ToDateTextBox"
                PopupButtonID="ToCalendarButton"></cc1:CalendarExtender>


            and I have four Validators :

            <asp:CompareValidator runat="server" ID="CheckFromDate" ControlToValidate="FromDateTextBox"
                Operator="DataTypeCheck" SetFocusOnError="true" Display="Dynamic" CssClass="ErrorLabel"
                ErrorMessage="error 1" Type="Date"></asp:CompareValidator>
            <br />
            <asp:CompareValidator ID="CheckToDate" runat="server" ControlToValidate="ToDateTextBox"
                ControlToCompare="FromDateTextBox" SetFocusOnError="true" Display="Dynamic" Operator="GreaterThan"
                CssClass="ErrorLabel" ErrorMessage="CheckToDate error"
                Type="Date"></asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorFrom" runat="server" CssClass="ErrorLabel"
                ControlToValidate="FromDateTextBox" ValidationGroup="FormSubmit" Display="Dynamic" ErrorMessage="FromDateTextBox required">
            </asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTo" runat="server" CssClass="ErrorLabel"
                ControlToValidate="ToDateTextBox" Display="Dynamic" ErrorMessage="ToDateTextBox required">
            </asp:RequiredFieldValidator>

            and this is my Button asp code and also I have 2 combobox that when the last one is selected, it will check if the To and the From texts are full also and then activate the button

btnStartExportRPT.Enable="true";


            <asp:Button ID="btnStartExportRPT" EnableTheming="true" CssClass="ButtonFilterSelectionL"
                Text="1111" runat="server" />
        </div>
            </ContentTemplate>
        </asp:UpdatePanel>
     </form>
</body>
</html>
