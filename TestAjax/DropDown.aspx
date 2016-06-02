<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDown.aspx.cs" Inherits="TestAjax.DropDown" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .ContainPanel {
            background: #ffcc00;
            font-size: 12px;
            padding: 3px;
            border: solid 1px #666;
            line-height: 150%;
        }

        .link {
            color: #666;
            font-size: 12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:TextBox ID="TextBox1" Text="请选择项" runat="server"></asp:TextBox>
                    <asp:Panel CssClass="ContainPanel" ID="Panel1" runat="server" Height="50px" Width="125px"
                        Style="visibility: hidden">
                        <asp:LinkButton ID="LinkButton1" CssClass="link" runat="server" OnClick="OnSelect">选项一</asp:LinkButton><br />
                        <asp:LinkButton ID="LinkButton2" CssClass="link" runat="server" OnClick="OnSelect">选项二</asp:LinkButton><br />
                        <asp:LinkButton ID="LinkButton3" CssClass="link" runat="server" OnClick="OnSelect">选项三</asp:LinkButton><br />
                      
                    </asp:Panel>
                    <cc1:dropdownextender id="DropDownExtender1" runat="server" targetcontrolid="TextBox1"
                        dropdowncontrolid="Panel1">
                </cc1:dropdownextender>
                </ContentTemplate>

            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
