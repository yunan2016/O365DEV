<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="TestAjax.WebUserControl1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:UpdatePanel ID="UpdatePanel5" runat="server">
    <ContentTemplate>

        <asp:TextBox ID="txtInstitute" runat="server" Height="25px" Width="265px"></asp:TextBox>
        <cc1:autocompleteextender id="txtInstitute_AutoComplete" runat="server"
            enabled="True" ServicePath="AutoComplete.asmx"  
           ServiceMethod="GetData" minimumprefixlength="1" enablecaching="false"
            targetcontrolid="txtInstitute"
            completioninterval="10" completionsetcount="10"
            usecontextkey="True"> </cc1:autocompleteextender>

    </ContentTemplate>
</asp:UpdatePanel>
