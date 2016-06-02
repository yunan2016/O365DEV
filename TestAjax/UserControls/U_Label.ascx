<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="U_Label.ascx.cs" Inherits="TestAjax.UserControls.U_Label" %>

<asp:Label ID="lblCountry" Text="" runat="server" value="12" />
<asp:HiddenField ID="hfEmail" runat="server" Value="111" />
<input id="Button1" type="button" value="button" onclick="PopUpMail()" />