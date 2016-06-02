<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="TestAjax.Html.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" AutoGenerateSelectButton="true" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />

                    <asp:BoundField DataField="Att1" HeaderText="Att1" />
                    <asp:BoundField DataField="Att2" HeaderText="Att2" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
