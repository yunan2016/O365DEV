<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TestAjax.UserControls.WebForm1" %>

<%@ Register Src="~/UserControls/U_Label.ascx" TagName="Country" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
    </script>
</head>
<body>
    <form id="form1" runat="server">
       <asp:ScriptManager ID="scmae1" runat="server"></asp:ScriptManager>
        <div>
            <uc:Country ID="countryInfo" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="Button"  OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
