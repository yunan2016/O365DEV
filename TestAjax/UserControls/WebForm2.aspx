<%@ Page Title="" Language="C#" MasterPageFile="~/UserControls/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="TestAjax.UserControls.WebForm2" %>

<%@ MasterType VirtualPath="~/UserControls/Site1.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function OpenDialog() {
            var urlDialog = $('<div></div>').html('<iframe style="border:1px;" src="' + "WebForm3.aspx" + '" width="100%" height="100%"></iframe>');
            urlDialog.dialog({
                autoOpen: false,
                modal: true,
                width: 625,
                height: 500,
                title: "SLSGuide",
            });
            urlDialog.dialog("open");
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <input id="Button1" type="button" value="button" onclick="OpenDialog()" />
    <input id="Text1" type="text" />
</asp:Content>
