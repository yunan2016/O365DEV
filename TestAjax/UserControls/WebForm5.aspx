<%@ Page Title="" Language="C#" MasterPageFile="~/UserControls/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="TestAjax.UserControls.WebForm5" %>
<%@  MasterType VirtualPath="~/UserControls/Site2.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
</asp:Content>
