<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmButton.aspx.cs" Inherits="TestAjax.ConfirmButton" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function CancelClick() {

            var label = document.getElementById("111");
            label.innerHTML = '您已经取消删除，时间： ' + (new Date()).localeFormat("T") + '.';
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <label id="111"></label>
             <br />
            <asp:Button ID="Button1" runat="server" Text="删除" />
            <br />

            <cc1:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" TargetControlID="Button1" ConfirmText="确定要删除么 ？"  OnClientCancel="CancelClick" ConfirmOnFormSubmit="false"></cc1:ConfirmButtonExtender>

        </div>
    </form>
</body>
</html>
