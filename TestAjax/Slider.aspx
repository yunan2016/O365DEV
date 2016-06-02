<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Slider.aspx.cs" Inherits="TestAjax.Slider" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .SliderHandle
        {
            position: absolute;
            height: 22px;
            width: 10px;
        }
        .SliderRail
        {
            position: relative;
            background: url('images/images.jpg') repeat-x;
            height: 22px;
            width: 150px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <asp:TextBox ID="MyTextBox" runat="server" AutoPostBack="true" Text="0" ></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <cc1:SliderExtender ID="SliderExtender1" Minimum="-100" Maximum="100" Steps="10"
             RailCssClass="SliderRail" HandleCssClass="SliderHandle"   TargetControlID="MyTextBox" BoundControlID="Label2" runat="server" />
        </div>
    </form>
</body>
</html>
