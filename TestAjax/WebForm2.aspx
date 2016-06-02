<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="TestAjax.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                        AutoPostBack="true">
                    </asp:DropDownList>


                    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                        AutoPostBack="true">
                    </asp:DropDownList>

                    <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                        runat="server" AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField DataField="Att1" HeaderText="Att1" />
                            <asp:BoundField DataField="Att2" HeaderText="Att2" />
                        </Columns>
                    </asp:GridView>


                    <asp:Panel ID="Panel1" runat="server" Visible="False">


                        <h4><i class="fa fa-info-circle" style="color: green; padding-right: 4px;"></i>
                            Sorry no data available - try searching again <a href="Default.aspx" style="text-decoration: underline">here</a></h4>




                        <br />
                        <br />
                    </asp:Panel>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
