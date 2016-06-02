t<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="timeago.aspx.cs" Inherits="TestAjax.Gridview.timeago" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                <asp:GridView ID="GridDisplay" runat="server" AutoGenerateColumns="False" CellPadding="4" PageSize="2"
                    ForeColor="#333333" GridLines="None" Width="200" AllowPaging="True"
                    OnPageIndexChanging="grdData_PageIndexChanging">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
                    <Columns>
                        <asp:TemplateField HeaderText="Username">
                            <ItemTemplate>
                                <asp:Label ID="lblG_Username" runat="server" Text='<%# Eval("LastName")%>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Width="15%" />
                        </asp:TemplateField>                   
                    </Columns>
                    <EditRowStyle BackColor="#999999"></EditRowStyle>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True"
                        ForeColor="White"></FooterStyle>
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True"
                        ForeColor="White"></HeaderStyle>
                    <PagerStyle BackColor="#284775" ForeColor="White"
                        HorizontalAlign="Center"></PagerStyle>
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True"
                        ForeColor="#333333"></SelectedRowStyle>
                    <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>
                    <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>
                    <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
                </asp:GridView>
        <asp:HiddenField ID="HiddenField1" runat="server" value="0"/>
    </form>
</body>
</html>
