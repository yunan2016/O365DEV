<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DynamicPopulate.aspx.cs" Inherits="TestAjax.DynamicPopulate" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function UpdateDataKey(value) {
            var behavior = $find('dp1');
            if (behavior)
                behavior.populate(value);
        }

        //sys.Application.add_load(function () { UpdateDataKey('G') });
    </script>
    <style type="text/css">
        .panelUpdating {
            border-width: 1px;
            border-color: #000;
            background: #cccccc;
            font-size: 14px;
            width: 300px;
            height: 250px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Time at the server"></asp:Label><br />
            <br />
            <label for="Radio1">
                <input id="Radio1" name="time" type="radio" value="G" onclick="UpdateDataKey(this.value)" />Normal</label><br />
            <br />
            <label for="Radio2">
                <input id="Radio2" name="time" type="radio" value="d" onclick="UpdateDataKey(this.value)" />Short Date</label><br />
            <br />
            <label for="Radio3">
                <input id="Radio3" name="time" type="radio" value="D" onclick="UpdateDataKey(this.value)" />Long Date</label><br />
            <br />
            <label for="Radio4">
                <input id="Radio4" name="time" type="radio" value="U" onclick="UpdateDataKey(this.value)" />UTC Time</label><br />
            <br />
            <div>
                <asp:Panel ID="TimePanel" runat="server" BorderStyle="Dashed" BorderWidth="1px" Height="50px" Width="200px">
                </asp:Panel>
                &nbsp;
            </div>
            <br />
            <cc1:DynamicPopulateExtender ID="DynamicPopulateExtender1" BehaviorID="dp1" UpdatingCssClass="panelUpdating" ServiceMethod="GetHtml" TargetControlID="TimePanel" PopulateTriggerControlID="Label1" runat="server"></cc1:DynamicPopulateExtender>
        </div>
    </form>
</body>
</html>
