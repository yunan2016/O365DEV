<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CascadingDropDown.aspx.cs" Inherits="TestAjax.CascadingDropDown" %>

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
            <asp:DropDownList runat="server" ID="ddl1" Width="200" />
            <br />
            <asp:DropDownList runat="server" ID="ddl2" Width="200" />
            <br />
            <cc1:CascadingDropDown runat="server" ID="cdd1" TargetControlID="ddl1"
                PromptText="Select a State"
                Category="state" LoadingText="[Loading States]"
                ServiceMethod="GetStates" ServicePath="CascadingDropDown.asmx" />
            <cc1:CascadingDropDown runat="server" ID="cdd2" TargetControlID="ddl2"
                ParentControlID="ddl1"
                PromptText="Select County" Category="county"
                LoadingText="[Loading Counties]"
                ServiceMethod="GetCounties" ServicePath="CascadingDropDown.asmx" />





        </div>
    </form>
</body>
</html>
