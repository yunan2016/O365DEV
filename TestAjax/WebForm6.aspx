<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs"  Inherits="TestAjax.WebForm6" MasterPageFile="~/Site1.Master" %>

<%@ MasterType VirtualPath="~/Site1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DropDownList ID="ddlSPUNo" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlSPUNo_Change">
    </asp:DropDownList>
            <asp:PlaceHolder runat="server" ID="placv1"></asp:PlaceHolder>
    <asp:Menu runat="server" ID="mymenu" OnMenuItemClick="mymenu_MenuItemClick">
        <Items>
            <asp:MenuItem Text="Home" Value="1" />
            <asp:MenuItem Text="Contact" Value="2" />
            <asp:MenuItem Text="About Us" />
        </Items>
    </asp:Menu>
    <asp:DetailsView runat="server" ID="userDetails">
        <Fields>
            <asp:TemplateField>
                <InsertItemTemplate>
                    <asp:TextBox runat="server" ID="userName" />
                    <asp:RequiredFieldValidator runat="server" ID="userNameValidator"
                        ErrorMessage="Please enter the name" ControlToValidate="userName" />
                </InsertItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
    <asp:UpdatePanel ID="UpdatePanelCompName" UpdateMode="Conditional" runat="server">
        <ContentTemplate>
            <asp:TextBox ID="compname" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Button1" />
        </Triggers>

    </asp:UpdatePanel>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</asp:Content>
