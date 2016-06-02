<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="TestAjax.Html.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:50%; margin: 0 auto;">
            <asp:DataList ID="dlList" runat="server" RepeatLayout="Table" RepeatColumns="1"
                OnDeleteCommand="dlList_DeleteCommand" >
                <ItemTemplate>
                    <table cellpadding="1" cellspacing="0" style="width: 500px; height: 100px; border: dashed 2px green; background-color: #C2D69B">
                        <tr>
                            <td>
                                <%#Eval("ContactName")%>
                            </td>
                            <td>
                                <%#Eval("City")%>
                            </td>
                            <td>
                                <%#Eval("Country")%>
                            </td>
                            <td>
                                <asp:Button ID="btndelete" Text="Delete" CommandName="Delete" runat="server"></asp:Button>

                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
</body>
</html>
