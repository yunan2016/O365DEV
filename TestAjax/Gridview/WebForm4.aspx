<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="TestAjax.Gridview.WebForm4" %>

<!DOCTYPE html>
<script runat="server">

    void EmployeesGridView_OnSelectedIndexChanged(Object sender, EventArgs e)
    {
        EmployeeDetailsSqlDataSource.SelectParameters["EmpID"].DefaultValue =
          EmployeesGridView.SelectedValue.ToString();
        EmployeeFormView.DataBind();
    }

    void EmployeeFormView_ItemUpdated(Object sender, FormViewUpdatedEventArgs e)
    {
        EmployeesGridView.DataBind();
    }

    void EmployeeFormView_ItemDeleted(Object sender, FormViewDeletedEventArgs e)
    {
        EmployeesGridView.DataBind();
    }

    void EmployeeDetailsSqlDataSource_OnInserted(Object sender, SqlDataSourceStatusEventArgs e)
    {
        System.Data.Common.DbCommand command = e.Command;

        EmployeeDetailsSqlDataSource.SelectParameters["EmpID"].DefaultValue =
          command.Parameters["@EmpID"].Value.ToString();

        EmployeesGridView.DataBind();
        EmployeeFormView.DataBind();
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FormView Example</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script type='text/javascript'>
        $(function () {
            $(".datepicker").datepicker();
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">

        <h3>FormView Example</h3>

        <table cellspacing="10">

            <tr>
                <td>
                    <asp:GridView ID="EmployeesGridView"
                        DataSourceID="EmployeesSqlDataSource"
                        AutoGenerateColumns="false"
                        DataKeyNames="EmployeeID"
                        OnSelectedIndexChanged="EmployeesGridView_OnSelectedIndexChanged"
                        runat="Server">

                        <HeaderStyle BackColor="Navy"
                            ForeColor="White" />

                        <Columns>

                            <asp:ButtonField Text="Details..."
                                HeaderText="Show<BR>Details"
                                CommandName="Select" />

                            <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" />
                            <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                            <asp:BoundField DataField="FirstName" HeaderText="First Name" />

                        </Columns>

                    </asp:GridView>

                </td>

                <td valign="top">

                    <asp:FormView ID="EmployeeFormView"
                        DataSourceID="EmployeeDetailsSqlDataSource"
                        DataKeyNames="EmployeeID"
                        GridLines="Both"
                        OnItemUpdated="EmployeeFormView_ItemUpdated"
                        OnItemDeleted="EmployeeFormView_ItemDeleted"
                        runat="server">

                        <HeaderStyle BackColor="Navy"
                            ForeColor="White" />

                        <RowStyle BackColor="White" />

                        <EditRowStyle BackColor="LightCyan" />

                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td align="right"><b>Employee ID:</b></td>
                                    <td><%# Eval("EmployeeID") %></td>
                                </tr>
                                <tr>
                                    <td align="right"><b>First Name:</b></td>
                                    <td><%# Eval("FirstName") %></td>
                                </tr>
                                <tr>
                                    <td align="right"><b>Last Name:</b></td>
                                    <td><%# Eval("LastName") %></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:LinkButton ID="EditButton"
                                            Text="Edit"
                                            CommandName="Edit"
                                            runat="server" />
                                        &nbsp;
                        <asp:LinkButton ID="NewButton"
                            Text="New"
                            CommandName="New"
                            runat="server" />
                                        &nbsp;
                        <asp:LinkButton ID="DeleteButton"
                            Text="Delete"
                            CommandName="Delete"
                            runat="server" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>

                        <EditItemTemplate>
                            <table>
                                <tr>
                                    <td align="right"><b>Employee ID:</b></td>
                                    <td><%# Eval("EmployeeID") %></td>
                                </tr>

                                <tr>
                                    <td align="right"><b>First Name:</b></td>
                                    <td>
                                        <asp:TextBox ID="EditFirstNameTextBox"
                                            Text='<%# Bind("FirstName") %>'
                                            runat="Server" /></td>
                                </tr>

                                <tr>
                                    <td align="right"><b>Last Name:</b></td>
                                    <td>
                                        <asp:TextBox ID="EditLastNameTextBox"
                                            Text='<%# Bind("LastName") %>' CssClass="datepicker" 
                                            runat="Server" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:LinkButton ID="UpdateButton"
                                            Text="Update"
                                            CommandName="Update"
                                            runat="server" />
                                        &nbsp;
                        <asp:LinkButton ID="CancelUpdateButton"
                            Text="Cancel"
                            CommandName="Cancel"
                            runat="server" />
                                    </td>
                                </tr>
                            </table>
                        </EditItemTemplate>

                        <InsertItemTemplate>
                            <table>
                                <tr>
                                    <td align="right"><b>First Name:</b></td>
                                    <td>
                                        <asp:TextBox ID="InsertFirstNameTextBox"
                                            Text='<%# Bind("FirstName") %>'
                                            runat="Server" /></td>
                                </tr>

                                <tr>
                                    <td align="right"><b>Last Name:</b></td>
                                    <td>
                                        <asp:TextBox ID="InsertLastNameTextBox"
                                            Text='<%# Bind("LastName") %>'
                                            runat="Server" /></td>
                                </tr>

                                <tr>
                                    <td colspan="2">
                                        <asp:LinkButton ID="InsertButton"
                                            Text="Insert"
                                            CommandName="Insert"
                                            runat="server" />
                                        &nbsp;
                        <asp:LinkButton ID="CancelInsertButton"
                            Text="Cancel"
                            CommandName="Cancel"
                            runat="server" />
                                    </td>
                                </tr>
                            </table>
                        </InsertItemTemplate>

                    </asp:FormView>

                </td>

            </tr>

        </table>

        <asp:SqlDataSource ID="EmployeesSqlDataSource"
            SelectCommand="SELECT EmployeeID, FirstName, LastName FROM Employees"
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            runat="server"></asp:SqlDataSource>

        <asp:SqlDataSource ID="EmployeeDetailsSqlDataSource"
            SelectCommand="SELECT EmployeeID, LastName, FirstName FROM Employees WHERE EmployeeID = @EmpID"
            InsertCommand="INSERT INTO Employees(LastName, FirstName) VALUES (@LastName, @FirstName); 
                         SELECT @EmpID = SCOPE_IDENTITY()"
            UpdateCommand="UPDATE Employees SET LastName=@LastName, FirstName=@FirstName 
                           WHERE EmployeeID=@EmployeeID"
            DeleteCommand="DELETE Employees WHERE EmployeeID=@EmployeeID"
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            OnInserted="EmployeeDetailsSqlDataSource_OnInserted"
            runat="server">

            <SelectParameters>
                <asp:Parameter Name="EmpID" Type="Int32" DefaultValue="0" />
            </SelectParameters>

            <InsertParameters>
                <asp:Parameter Name="EmpID" Direction="Output" Type="Int32" DefaultValue="0" />
            </InsertParameters>

        </asp:SqlDataSource>

    </form>
</body>
</html>

