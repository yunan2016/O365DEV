<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TextBoxWatermark.aspx.cs" Inherits="TestAjax.TextBoxWatermark" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.4.min.js"></script>
     <script type="text/javascript">
         $(document).ready(function () {
             var tcount = $(".input_feld_small").val().length;
             alert(tcount);
         });
         function test()
         {
             var tcount = $(".input_feld_small").val().length;
             alert(tcount);
         }
</script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server"
                WatermarkText="Enter in something here!" TargetControlID="TextBox1"
                WatermarkCssClass="watermark"></cc1:TextBoxWatermarkExtender>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="input_feld_small"></asp:TextBox>
            <input id="Button1" type="button" value="button" onclick="test()" />
        </div>
    </form>
</body>
</html>
