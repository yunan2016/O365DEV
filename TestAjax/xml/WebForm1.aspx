<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TestAjax.xml.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <script type="text/javascript">

        function showInfo() {
            if (document.getElementById('HidComboControl').value == "") {
                alert("hello world")
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList runat="server" ID="ddlUsersRating" AutoPostBack="True"
                DataSourceID="sdsUserRatings" DataTextField="RatingID" DataValueField="RatingID" Height="16px" AppendDataBoundItems="True" OnSelectedIndexChanged="ddlUsersRating_SelectedIndexChanged">
                <asp:ListItem Value="0">(Select a Rating)</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource runat="server" ID="sdsUserRatings" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
                InsertCommand="INSERT INTO UserRatings(UserID, ShowID, RatingID) VALUES (@UserID, @ShowID, @RatingID)"
                SelectCommand="SELECT UserRatings.RatingID FROM UserRatings INNER JOIN Users ON UserRatings.UserID = Users.UserID WHERE (UserRatings.ShowID = @ShowID) AND (Users.UserID = @UserID)"
                UpdateCommand="UPDATE UserRatings SET RatingID = @RatingID WHERE (UserID = @UserID) AND (ShowID = @ShowID)" OnInserted="sdsUserRatings_Inserted">
                <InsertParameters>
                    <asp:ControlParameter ControlID="ddlUsers" Name="UserID" PropertyName="SelectedValue" />
                    <asp:RouteParameter Name="ShowID" RouteKey="ShowID" />
                    <asp:ControlParameter ControlID="ddlUsersRating" Name="RatingID" PropertyName="SelectedValue" />
                </InsertParameters>
                <SelectParameters>
                    <asp:RouteParameter Name="ShowID" RouteKey="ShowID" />
                    <asp:ControlParameter ControlID="ddlUsers" Name="UserID" PropertyName="SelectedValue" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="ddlUsersRating" Name="RatingID" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="ddlUsers" Name="UserID" PropertyName="SelectedValue" />
                    <asp:RouteParameter Name="ShowID" RouteKey="ShowID" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
