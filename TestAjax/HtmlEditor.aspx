<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HtmlEditor.aspx.cs" Inherits="TestAjax.HtmlEditor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.4.min.js"></script>
    <script type="text/javascript">
        function test()
        {
           
                $("#rbPerson1a").attr("checked", false);
                $("#rbPerson1b").attr("checked", false);
            
            //$("input:radio").prop('checked', false);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<input type="radio" runat="server" id="rbPerson1a" name="pers"  />

 <input type="radio" runat="server" id="rbPerson1b" name="person"  />


        <input id="Button1" type="button" value="button"  onclick="test()"/>
    </div>
    </form>
</body>
</html>
