<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="TestAjax.NewDemo.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title> 
    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <script type="text/javascript">
        $(function () {
            var Var1 = document.getElementById("HiddenField1").value; alert('Correctly checked by ' + Var1 + '!');
        })

        function test()
        {
            var opt = "<option> -- Select -- </option>";
            $("#DropDownList1").append($("<option></option>").html(opt));

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged"></asp:RadioButtonList>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="01">1</asp:ListItem>
                <asp:ListItem Value="02">2</asp:ListItem>
            </asp:DropDownList>
            <input id="Button1" type="button" value="button"  onclick="test()"/>
            <asp:Button ID="btnAdd" runat="server" Text="Button" />
        </div>

    </form>
</body>
</html>
