<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SlideShow.aspx.cs" Inherits="TestAjax.SlideShow" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>

            <asp:Image runat="server" ID="image1" ImageUrl="~images/images.jpg" Height="100" />
            <asp:Button runat="Server" ID="prevButton1" Text="上一张" />
            <asp:Button runat="Server" ID="nextButton1" Text="下一张" />
            <cc1:SlideShowExtender runat="Server" ID="slideShowExtender1" TargetControlID="image1"
                NextButtonID="nextButton1" PreviousButtonID="prevButton1" SlideShowServiceMethod="GetSlides"
                Loop="true" />
        </div>
    </form>
</body>
</html>
