<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkEdit.aspx.cs" Inherits="TestAjax.checkEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/ckeditor/ckeditor.js" type="text/javascript"></script>
    <script type="text/javascript">
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="tbContent" runat="server" TextMode="MultiLine" class="ckeditor"></asp:TextBox>
        </div>
    </form>
</body>
</html>
