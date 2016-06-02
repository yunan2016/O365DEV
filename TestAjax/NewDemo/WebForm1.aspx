<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TestAjax.NewDemo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:TextBox ID="userNameTxt" runat="server" ValidationGroup="li"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" ValidationGroup="li"/>
            <asp:CustomValidator ID="CustomValidator1"
                runat="server" ErrorMessage="CustomValidator"
                ValidationGroup="li"
                ControlToValidate="userNameTxt"
                ClientValidationFunction="textBoxControl"></asp:CustomValidator>

            <script type="text/jscript">
                function textBoxControl(source, arguments) {
                    //debugger;
                    if (arguments.Value.length > 5) //or control things (e.g. at least 6 character)
                        arguments.IsValid = true;
                    else
                        arguments.IsValid = false;
                }
            </script>

        </div>
    </form>
</body>
</html>
