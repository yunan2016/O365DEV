<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="TestAjax.Gridview.WebForm3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title></title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script type="text/javascript">
        function printDiv(divID) {
            //Get the HTML of div
            var html = "";
            $("#" + divID + " input").each(function () {
                if ($(this).is('[type=text]'))
                {
                    html += " <div style='border:1px solid;'>";
                    html += $(this).val();
                    html += "</div>"
                }
              
            });


            //Reset the page's HTML with div's HTML only
            document.body.innerHTML =
              "<html><head><title>Timesheet Details</title></head><body>" +
              html + "</body>";

            //Print Page
            window.print();


        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="testi">
         
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <input id="Text1" type="text" />
            <input id="Text2" type="text" />
            <input id="Button1" type="button" value="button"  onclick="printDiv('testi')"/>

            <a href="javascript:window.print()">Click to Print This Page</a> 
        </div>
    </form>
</body>
</html>
