<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="TestAjax.UserInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.4.min.js"></script>
    <script type="text/javascript">
        function test() {
            var exceptions = [42, 337, 187, 101, 456];
            var s = 680;
            if (jQuery.inArray(s, exceptions) !== -1 || (600 <= s && s <= 689)) {
                alert("is exits");
            }
        }
    </script>
    <style>
        .centered {
            position: fixed;
            top: 50%;
            left: 50%;
            /* bring your own prefixes */
            transform: translate(-50%, -50%);
        }
    </style>
</head>
<body>
   <form id="form1" runat="server">
        <div id="popUserInfo" style="text-align: center" class="centered">
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </div>
    </form>
</body>
</html>
