<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidatorCallout.aspx.cs" Inherits="TestAjax.ValidatorCallout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-2.1.4.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootstrap-multiselect.js"></script>
    <link href="css/bootstrap-multiselect.css" rel="stylesheet" />
    <style type="text/css">
        .highlight {
            background-color: lemonchiffon;
        }
    </style>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#example-getting-started').multiselect();
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="sm" runat="server" />
        <div>
            <select id="example-getting-started" multiple="multiple">
                <option value="cheese">Cheese</option>
                <option value="tomatoes">Tomatoes</option>
                <option value="mozarella">Mozzarella</option>
                <option value="mushrooms">Mushrooms</option>
                <option value="pepperoni">Pepperoni</option>
                <option value="onions">Onions</option>
            </select>
        </div>
        <asp:RequiredFieldValidator ID="NReq" runat="server"
            ControlToValidate="example-getting-started"
            Display="None"
            ErrorMessage="<b>Required Field Missing</b><br />A name is rquired." />

        <ajaxToolkit:ValidatorCalloutExtender ID="NReqE" runat="server"
            TargetControlID="NReq"
            HighlightCssClass="highlight"
            Width="240px" />
        <br />
        <asp:Button ID="btnOK" runat="server" Text="Submit" OnClick="btnOK_Click" /><br /><br />
        <asp:UpdatePanel ID="up" runat="server">
            <ContentTemplate>
                <asp:Label ID="lbResult" runat="server" />
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnOK" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
    </form>
</body>
</html>
