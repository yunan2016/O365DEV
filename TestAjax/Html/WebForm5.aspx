<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="TestAjax.Html.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="../Scripts/jquery-2.1.4.js"></script>
    <title></title>
    <script type="text/javascript">
        function hide() {
            $("#showInfo").hide();
        }
        $(document).ready(function () {

            var controlTest = document.getElementById("test");
            var htmlInfo = "";
            htmlInfo += '<div><h5>toyota</h5><div><input type="button" onclick="hide()" /></div></div><div id="showInfo"><ul><li>y</li><li>y</li><li>y</li></ul></div></div>'
            controlTest.innerHTML += htmlInfo;
        });



    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="test">
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" AutoPostBack="true"></asp:TextBox>
            </div>
        </div>
    </form>
</body>
</html>
