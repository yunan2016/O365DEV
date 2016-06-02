<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="TestAjax.Html.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function changeIframSrc() {
            document.getElementById('frmaa').src = "WebForm3.aspx";
     }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="dlgaa">
                <iframe id="frmaa" frameborder="0" runat="server" src="WebForm3.aspx"></iframe>
            </div>
        </div>
        <asp:Button ID="myButton" runat="server"
            OnClick="myButton_Click" />
        <input id="Button1" type="button" value="button" onclick="changeIframSrc()" />
    </form>
</body>
</html>
