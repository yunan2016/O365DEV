<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MaskedEdit.aspx.cs" Inherits="TestAjax.MaskedEdit" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.4.min.js"></script>
    <script type="text/javascript">
        function validate() {
            if (!Page_IsValid) {
                return false;
            }
            if ($(".ajax__fileupload_fileItemInfo").length > 0) {
                alert('file exist .');
            }
            else {
                alert('select your file');
                return false;

            }
        }
        function UploadComplete(sender, args) {
            debugger;
            var filesize = args.get_fileSize();
            var fileId = args.get_fileId();

            var status = document.getElementById('AjaxFileUpload1_FileItemStatus_' + fileId);
            var container = document.getElementById('AjaxFileUpload1_FileInfoContainer_' + fileId);


            if (filesize > 10) { // same condition used for server side
                alert("123");
                document.getElementById('lblStatus').innerText = "error";
                if (status.innerText) {
                    status.innerText = " (Error)";
                }
                if (status.textContent) {
                    status.textContent = " (Error)";
                }
                container.style.color = 'Red';
            }
        }

    </script>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <asp:TextBox ID="TextBox2" runat="server" Width="130px" Height="16px" ValidationGroup="MKE" />
            <cc1:MaskedEditExtender ID="MaskedEditExtender2" runat="server"
                TargetControlID="TextBox2"
                Mask="9,999,999.99"
                MessageValidatorTip="true"
                MaskType="Number"
                InputDirection="RightToLeft"
                AcceptNegative="Left"
                DisplayMoney="Left"
                ErrorTooltipEnabled="True" />
            <cc1:MaskedEditValidator ID="MaskedEditValidator2" runat="server"
                ControlExtender="MaskedEditExtender2"
                ControlToValidate="TextBox2"
                IsValidEmpty="False"
                MaximumValue="12000"
                EmptyValueMessage="Number is required"
                InvalidValueMessage="Number is invalid"
                MaximumValueMessage="Number &gt; 12000"
                MinimumValueMessage="Number &lt; -100"
                MinimumValue="-100"
                Display="Dynamic"
                TooltipMessage="Input a number from -100 to 12000"
                EmptyValueBlurredText="Number is required"
                InvalidValueBlurredMessage="Number is invalid"
                MaximumValueBlurredMessage="Number &gt; 12000"
                MinimumValueBlurredText="Number &lt; -100"
                ValidationGroup="MKE" />
            <br />
            <em><span style="font-size: 8pt">Tip: Type '.' to switch</span></em>
            <br />
            <br />

            <strong>Enter Time (format: <em>99:99:99</em>):</strong>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" Width="130px" Height="16px" ValidationGroup="MKE" />
            <cc1:MaskedEditExtender ID="MaskedEditExtender3" runat="server"
                TargetControlID="TextBox3"
                Mask="99:99:99"
                MessageValidatorTip="true"
                OnFocusCssClass="MaskedEditFocus"
                OnInvalidCssClass="MaskedEditError"
                MaskType="Time"
                AcceptAMPM="True"
                ErrorTooltipEnabled="True" />
            <cc1:MaskedEditValidator ID="MaskedEditValidator3" runat="server"
                ControlExtender="MaskedEditExtender3"
                ControlToValidate="TextBox3"
                IsValidEmpty="False"
                EmptyValueMessage="Time is required"
                InvalidValueMessage="Time is invalid"
                Display="Dynamic"
                TooltipMessage="Input a time"
                EmptyValueBlurredText="*"
                InvalidValueBlurredMessage="*"
                ValidationGroup="MKE" />
            <br />
            <em><span style="font-size: 8pt">Tip: Type 'A' or 'P' to switch AM/PM</span></em>
            <br />
            <br />

            <strong>Enter Date (format: <em>99/99/9999</em>):</strong>
            <br />
            <asp:TextBox ID="TextBox5" runat="server" Width="130px" MaxLength="1" Style="text-align: justify" ValidationGroup="MKE" />
            <cc1:MaskedEditExtender ID="MaskedEditExtender5" runat="server"
                TargetControlID="TextBox5"
                Mask="99/99/9999"
                MessageValidatorTip="true"
                OnFocusCssClass="MaskedEditFocus"
                OnInvalidCssClass="MaskedEditError"
                MaskType="Date"
                DisplayMoney="Left"
                AcceptNegative="Left"
                ErrorTooltipEnabled="True" />
            <cc1:MaskedEditValidator ID="MaskedEditValidator5" runat="server"
                ControlExtender="MaskedEditExtender5"
                ControlToValidate="TextBox5"
                EmptyValueMessage="Date is required"
                InvalidValueMessage="Date is invalid"
                Display="Dynamic"
                TooltipMessage="Input a date"
                EmptyValueBlurredText="*"
                InvalidValueBlurredMessage="*"
                ValidationGroup="MKE" />
            <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox5" PopupButtonID="ImgBntCalc" />
            <br />
            <br />
            <%--      <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <cc1:MaskedEditExtender ID="TextBox6_MaskedEditExtender" runat="server"
                CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder=""
                CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder=""
                CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True"
                TargetControlID="TextBox6" MaskType="Date" UserTimeFormat="TwentyFourHour"></cc1:MaskedEditExtender>--%>
            <cc1:AjaxFileUpload ID="AjaxFileUpload1" AllowedFileTypes="jpg,jpeg,png,gif"
                runat="server" MaximumNumberOfFiles="3" OnUploadComplete="AjaxFileUpload1_UploadComplete"  OnClientUploadComplete="UploadComplete" />
            <input id="Button1" type="button" value="button" onclick="test()" />
            <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" OnClientClick="validate()" ValidationGroup="submit" />






            <asp:TextBox ID="tb_time" runat="server" Width="130px" Height="16px" />
            <cc1:MaskedEditExtender ID="MaskedEditExtender1" runat="server"
                TargetControlID="tb_time"
                Mask="99/99/9999"
                MaskType="Time"
                AutoComplete="false" />
            <cc1:MaskedEditValidator ID="MaskedEditValidator1" runat="server"
                ControlExtender="MaskedEditExtender1"
                ControlToValidate="tb_time"
                IsValidEmpty="True"
                InvalidValueMessage="Time is invalid" />
        </div>
    </form>
</body>
</html>
