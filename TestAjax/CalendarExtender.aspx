<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="CalendarExtender.aspx.cs" Inherits="TestAjax.CalendarExtender" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/jquery-2.1.4.min.js"></script>
    <title></title>
    <script type="text/javascript">
        $(document).ready(function () {

            $("#txtInfo").change(function () {
                // Rearrange the date from "MM/dd/yyyy" to "dd/MM/yyyy"
                var components = $(this).val().split('/');
                var date = new Date(components[2], components[1] - 1, components[0]);

                $("#txtAge").val(_calculateAge(date));
            });

        });

        function _calculateAge(birthday) { // birthday is a date
            var ageDifMs = Date.now() - birthday.getTime();
            var ageDate = new Date(ageDifMs); // miliseconds from epoch
            return Math.abs(ageDate.getUTCFullYear() - 1970);
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"  EnableScriptLocalization="true" EnableScriptGlobalization="true"/>
        <div>
            <asp:TextBox ID="txtInfo" runat="server"></asp:TextBox>

            <cc1:CalendarExtender ID="CalendarExtender1" TargetControlID="txtInfo" runat="server"
                Format="MM/dd/yyyy" />
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        </div>

    </form>
</body>
</html>
