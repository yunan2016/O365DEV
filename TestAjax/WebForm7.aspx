<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="TestAjax.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #testTable {
            width: 300px;
            margin-left: auto;
            margin-right: auto;
        }

        #tablePagination {
            background-color: Transparent;
            font-size: 0.8em;
            padding: 0px 5px;
            height: 20px;
        }

        #tablePagination_paginater {
            margin-left: auto;
            margin-right: auto;
        }

        #tablePagination img {
            padding: 0px 2px;
        }

        #tablePagination_perPage {
            float: left;
        }

        #tablePagination_paginater {
            float: right;
        }
    </style>
    <script src="Scripts/jquery-2.1.4.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.tablePagination.0.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(
        function () {
            $('table').tablePagination({});
        });

        function check() {

            var name = document.getElementById('<%=TextBox1.ClientID%>').value;
            var first = name.substring(0, 1);
            if (!(first >= "A" && first <= "Z")) {
                alert("First character is capital");
                return false;
            }

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="width: 300px;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    CellPadding="4" DataSourceID="ProductsWithCategoryInfoDataSource" ForeColor="#333333"
                    GridLines="None" Width="424px" ShowHeader="true"
                    OnPreRender="GridView1_PreRender">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                        <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:SqlDataSource ID="ProductsWithCategoryInfoDataSource" runat="server"
                    ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
                    SelectCommand="
        SELECT Products.ProductID, Products.ProductName, Categories.CategoryName
        FROM Categories
        INNER JOIN Products ON Categories.CategoryID = Products.CategoryID"></asp:SqlDataSource>
                <br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClientClick="return check();" />

                   <input type="button" onclick="window.print()" value="Print" />
            </div>
        </div>
    </form>
</body>
</html>
