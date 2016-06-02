<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutoCompleteExtender.aspx.cs" Inherits="TestAjax.AutoCompleteExtender" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <title></title>
    <script type="text/javascript" src="Scripts/jquery-2.1.4.js"></script>
    <style type="text/css">
        .mycss {
            top: 0px !important;
        }

        .autocomplete_completionListElement {
            visibility: hidden;
            margin: 0px !important;
            background-color: inherit;
            color: windowtext;
            border: buttonshadow;
            border-width: 1px;
            border-style: solid;
            cursor: 'default';
            overflow: auto;
            height: 200px;
            text-align: left;
            list-style-type: none;
        }

        /* AutoComplete highlighted item */

        .autocomplete_highlightedListItem {
            background-color: #ffff99;
            color: black;
            padding: 1px;
        }

        /* AutoComplete item */

        .autocomplete_listItem {
            background-color: window;
            color: windowtext;
            padding: 1px;
        }
        
    </style>
    <script type="text/javascript">
        function GetID(source, eventArgs) {
            var HdnKey = eventArgs.get_value();
            //alert(HdnKey);
            document.getElementById("hdnID").value = HdnKey;
        }
        function showID()
        {
            alert(document.getElementById("hdnID").value )
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <asp:TextBox ID="txtInfo" runat="server" OnTextChanged="txtInfo_TextChanged" AutoPostBack="true"></asp:TextBox>
            <cc1:AutoCompleteExtender ID="TextBox1_AutoCompleteExtender" runat="server" ServicePath="AutoComplete.asmx"
                ServiceMethod="GetData1" TargetControlID="txtInfo" MinimumPrefixLength="1" CompletionSetCount="5" CompletionInterval="100" OnClientItemSelected="GetID">
            </cc1:AutoCompleteExtender>
            <asp:HiddenField ID="hdnID" runat="server" />
            <%--<input id="Button1" type="button" value="button" onclick="showID()"/>--%>
        </div>


          <asp:TextBox ID="txtContactsSearch" runat="server" AutoPostBack="true"></asp:TextBox>

        <cc1:AutoCompleteExtender ServiceMethod="SearchCustomers"
            MinimumPrefixLength="2"
            CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
            TargetControlID="txtContactsSearch"
            ID="AutoCompleteExtender1" runat="server" FirstRowSelected="false">
        </cc1:AutoCompleteExtender>
    </form>
</body>
</html>
