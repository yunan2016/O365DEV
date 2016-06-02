<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sqlsourcecontrol.aspx.cs" Inherits="TestAjax.Gridview.sqlsourcecontrol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"
                DataKeyNames="ProductID" DataSourceID="ProductsWithCategoryInfoDataSource" OnSelectedIndexChanged="GridView2_SelectedIndexChanged"
                 OnDataBound="GridView2_DataBound" AutoGenerateSelectButton="True" OnRowDataBound="GridView2_RowDataBound"
                EnableViewState="False">
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID"
                        InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName"
                        SortExpression="ProductName" />
                    <asp:BoundField DataField="CategoryName" HeaderText="CategoryName"
                        SortExpression="CategoryName" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="ProductsWithCategoryInfoDataSource" runat="server" OnSelected="ProductsWithCategoryInfoDataSource_Selected"
                ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
                SelectCommand="
        SELECT Products.ProductID, Products.ProductName, Categories.CategoryName
        FROM Categories
        INNER JOIN Products ON Categories.CategoryID = Products.CategoryID" > </asp:SqlDataSource>
        </div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </form>
</body>
</html>
