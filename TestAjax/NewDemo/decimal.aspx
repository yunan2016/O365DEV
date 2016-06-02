<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="decimal.aspx.cs" Inherits="TestAjax.NewDemo._decimal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode != 46)
                return false;
            else {
                var len = document.getElementById("txtChar").value.length;
                var index = document.getElementById("txtChar").value.indexOf('.');

                if (index > 0 && charCode == 46) {
                    return false;
                }
                if (index > 0) {
                    var CharAfterdot = (len + 1) - index;
                    if (CharAfterdot > 4) {
                        return false;
                    }
                }

            }
            return true;
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            <input id="txtChar" onkeypress="return isNumberKey(event)" type="text" name="txtChar" class="CsstxtChar" />
        </div>
    </form>
</body>
</html>
