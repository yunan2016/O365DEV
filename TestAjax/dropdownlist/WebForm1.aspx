<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TestAjax.dropdownlist.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <script src="../Scripts/datedropper.js"></script>
    <link href="../styles/datedropper.css" rel="stylesheet" />
    <script>

        $(function () {
            $("#departure").dateDropper();
            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
            function EndRequestHandler(sender, args) {
                //Binding Code Again
                $("#departure").dateDropper();
            }
        })


    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server" ID="scmanage1" />
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <input type="text" id="departure" />
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </ContentTemplate>
            </asp:UpdatePanel>

        </div>
    </form>
</body>
</html>
