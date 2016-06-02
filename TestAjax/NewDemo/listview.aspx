<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listview.aspx.cs" Inherits="TestAjax.NewDemo.listview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView runat="server"
                ID="EmployeesListView"
                 OnItemDeleted="EmployeesListView_ItemDeleted"
                DataSourceID="EmployeesDataSource"
                DataKeyNames="EmployeeID,FirstName">
                <LayoutTemplate>
                    <table runat="server" id="tblEmployees"
                        cellspacing="0" cellpadding="1" width="440px" border="1">
                        <tr id="itemPlaceholder" runat="server"></tr>
                    </table>
                    <asp:DataPager ID="EmployeesDataPager" runat="server" PageSize="10">
                        <Fields>
                            <asp:NumericPagerField />
                        </Fields>
                    </asp:DataPager>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr runat="server">
                        <td>
                            <asp:Label runat="server" ID="NameLabel"
                                Text='<%#Eval("LastName") + ", " + Eval("FirstName") %>' />
                        </td>
                        <td style="width: 80px">
                            <asp:LinkButton runat="server"
                                ID="SelectEmployeeButton"
                                Text="Add To List"
                                CommandName="AddToList"
                                CommandArgument='<%#Eval("LastName") + ", " + Eval("FirstName") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>

            <br />
            <br />
            <b>Selected Employees:</b><br />
            <asp:ListBox runat="server" ID="SelectedEmployeesListBox" Rows="10" Width="300px" />

            <!-- This example uses Microsoft SQL Server and connects      -->
            <!-- to the AdventureWorks sample database. Use an ASP.NET    -->
            <!-- expression to retrieve the connection string value       -->
            <!-- from the Web.config file.                                -->
            <asp:SqlDataSource ID="EmployeesDataSource" runat="server"
                ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
                SelectCommand="SELECT [EmployeeID], [FirstName], [LastName]
                 FROM Employees
                 ORDER BY [LastName], [FirstName], [EmployeeID]"></asp:SqlDataSource>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </form>
</body>
</html>
