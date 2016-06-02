<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="TestAjax.WebForm6" MasterPageFile="~/Site1.Master" %>

<%@ MasterType VirtualPath="~/Site1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:UpdatePanel ID="UpdatePanelCompName" UpdateMode="Conditional" runat="server">
        <ContentTemplate>
            <asp:TextBox ID="compname" runat="server"></asp:TextBox>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="compname" />
        </Triggers>

    </asp:UpdatePanel>
      <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</asp:Content>
