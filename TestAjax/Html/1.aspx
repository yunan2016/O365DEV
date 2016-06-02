<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1.aspx.cs" Inherits="TestAjax.Html._1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript">
        function GridDataaa() {
            //debugger;
            //var prtGrid = document.getElementById('dvid');
            //prtGrid.border = 0;
            var prtwin = window.open('', 'PrintGridViewData', 'left=100,top=80,width=1000,height=1000,tollbar=0,scrollbars=1,status=0,resizable=1');
            prtwin.document.write("1");

            prtwin.document.close();
            prtwin.focus();
            prtwin.print();
            prtwin.close();
            return false;
        }
        function postBackByObject() {
            var o = window.event.srcElement;
            if (o.tagName == "INPUT" && o.type == "checkbox") {
                __doPostBack("", "");
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TreeView ID="treeview" runat="server" ShowCheckBoxes="All" OnSelectedNodeChanged="treeview_SelectedNodeChanged" PathSeparator="-" OnTreeNodeCheckChanged="treeview_TreeNodeCheckChanged">
            <Nodes>
                <asp:TreeNode Text="Root">
                    <asp:TreeNode Text="A"></asp:TreeNode>
                    <asp:TreeNode Text="B">
                        <asp:TreeNode Text="B1" NavigateUrl="~/Html/WebForm5.aspx" />
                        <asp:TreeNode Text="B2" />
                    </asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
        <asp:Label runat="server" ID="info"></asp:Label>
        <input type="button" onclick="GridDataaa()" />
    </form>
</body>
</html>
