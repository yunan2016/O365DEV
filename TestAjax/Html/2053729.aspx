<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2053729.aspx.cs" Inherits="TestAjax.Html._2053729" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function test() {
            document.getElementById("111").value = "11";

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:UpdatePanel ID="UpdatePanelGridDetail" runat="server">
            <ContentTemplate>
                <asp:Repeater ID="gv_detailList" runat="server">
                    <HeaderTemplate>
                        <table style="width: 100%">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><a target="_blank" href="2053553.aspx">View Attachment</a></td>
                            <td>
                                <%#Eval("Name").ToString()%></td>
                            <td>
                                <%#Eval("Sex").ToString()%>
                            </td>
                        </tr>

                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    
                 
                  <asp:LinkButton ID="LinkButton1" runat="server">刷新</asp:LinkButton>
                    </FooterTemplate>
                </asp:Repeater>


              

            </ContentTemplate>
        </asp:UpdatePanel>



    </form>
</body>
</html>
