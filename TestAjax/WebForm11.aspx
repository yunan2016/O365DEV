<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm11.aspx.cs" Inherits="TestAjax.WebForm11" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/jquery-2.1.4.js"></script>
    <title></title>
    <script type="text/javascript">
        function UploadComplete(sender, args) {
            var filesize = args.get_fileSize();
            var fileId = args.get_fileId();

            var status = document.getElementById('AjaxFileUpload1_FileItemStatus_' + fileId);
            var container = document.getElementById('AjaxFileUpload1_FileInfoContainer_' + fileId);


            if (filesize > 72000) { // same condition used for server side
                document.getElementById('lblStatus').innerText = "error";
                if (status.innerText) {
                    status.innerText = " (Error)";
                }
                if (status.textContent) {
                    status.textContent = " (Error)";
                }
                container.style.color = 'Red';
            }
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />


        <cc1:AjaxFileUpload ID="AjaxFileUpload1" AllowedFileTypes="jpg,jpeg,png" runat="server" MaximumNumberOfFiles="4" OnUploadComplete="AjaxFileUpload1_UploadComplete" OnClientUploadComplete="UploadComplete" />


    </form>
</body>
</html>
