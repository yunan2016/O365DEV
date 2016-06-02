<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="TestAjax.Gridview.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Panel ID="ErrorPanel" runat="server">

            <asp:Label ID="status" runat="server" Text="Please Type The Image in Box"></asp:Label>

            <asp:UpdatePanel ID="UpdatePanel13" runat="server">
                <ContentTemplate>

                    <asp:Image ID="Image1" runat="server"
                        ImageUrl="~/Security@3400CaptchaHandler/CImage.aspx" Width="226px"
                        Height="52px" />
                    <br />
                    <asp:TextBox ID="Capcthatext" runat="server" BackColor="#333333"
                        BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Smaller"
                        ForeColor="White" Width="220px"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnhuman" runat="server"
                        Text="I'm Human"
                        Font-Bold="False" CssClass="loginbtnhuman" OnClick="btnhuman_Click" />
                    <br />



                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </ContentTemplate>




            </asp:UpdatePanel>
        </asp:Panel>
    </form>
</body>
</html>
