<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="TestAjax.WebForm3" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript">
        function Pageload() {
            hid1 = document.getElementById("HiddenField1");
            hid2 = document.getElementById("HiddenField2");
        }
        function SetPosition() {
            hid1.value = document.getElementById("div1").scrollLeft;
            hid2.value = document.getElementById("div1").scrollTop;
        }
        function GetPosition() {
            document.getElementById("div1").scrollLeft = hid1.value;
            document.getElementById("div1").scrollTop = hid2.value;
        }

        function test() {
            debugger;
            var textboxes = document.getElementsByClassName('GridTextBox');

        }

    </script>

</head>
<body onload="Pageload()">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" OnLoad="UpdatePanel1_Load">
            <ContentTemplate>
                <div style="width: 300px; height: 200px; overflow: auto;" id="div1" onscroll="SetPosition();">
                    <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" Height="200px" Width="300px"
                        AllowSorting="True" OnSorting="GridView1_Sorting" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="2" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound">
                        <Columns>
                            <asp:TemplateField HeaderText="Att1">
                                <ItemTemplate>
                                    <asp:TextBox ID="TextBox1" CssClass="GridTextBox" runat="server" Text='<%#Bind("Att1") %>'></asp:TextBox>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:RadioButtonList runat="server" ID="MContract"  OnSelectedIndexChanged="MContract_SelectedIndexChanged" AutoPostBack="true">
                                        <asp:ListItem Text="Yes"></asp:ListItem>
                                        <asp:ListItem Text="No"></asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    <asp:Button ID="Button10" runat="server" Visible="false" Text="Upload" />

                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Att2">
                                <ItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%#Bind("Att2") %>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Issue" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkbtnIssue" runat="server" ForeColor="Black"
                                        Text='hah' CommandName="checkAppIss" />
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>
                        <PagerTemplate>
                            <asp:LinkButton ID="lb_firstpage" runat="server" OnClick="lb_firstpage_Click">first</asp:LinkButton>
                            <asp:LinkButton ID="lb_previouspage" runat="server"
                                OnClick="lb_previouspage_Click">previous</asp:LinkButton>
                            <asp:LinkButton ID="lb_nextpage" runat="server" OnClick="lb_nextpage_Click">next</asp:LinkButton>
                            <asp:LinkButton ID="lb_lastpage" runat="server" OnClick="lb_lastpage_Click">last</asp:LinkButton>
                            <asp:Label ID="lbl_nowpage" runat="server" Text="<%#GridView1.PageIndex+1 %>" ForeColor="#db530f"></asp:Label>/<asp:Label
                                ID="lbl_totalpage" runat="server" Text="<%#GridView1.PageCount %>" ForeColor="#db530f"></asp:Label>
                        </PagerTemplate>
                    </asp:GridView>
                    <asp:Panel ID="pnlIssue" runat="server" BackColor="Gainsboro" CssClass="contentfont">
                        <table align="center">
                            <tr>
                                <th valign="middle" colspan="2" align="center" bgcolor="#1E4265" style="font-weight: bold; font-size: medium; font-family: Arial; color: white;">Issue Details
                                <asp:ImageButton ID="btnWarning" runat="server" ImageUrl="Images/Close.PNG" ImageAlign="Right"
                                    Height="20px" Width="20px" />
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text="App ID" Font-Bold="true"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblAppID" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text="AppName" Font-Bold="true"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblAppName" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>

                    <asp:HiddenField ID="hfpop" runat="server" />
                    <cc1:ModalPopupExtender ID="popup" CancelControlID="btnWarning" runat="server" PopupControlID="pnlIssue"
                        TargetControlID="hfpop">
                    </cc1:ModalPopupExtender>
                    </table>

                </div>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                <asp:HiddenField ID="HiddenField1" runat="server" />
                <asp:HiddenField ID="HiddenField2" runat="server" />
            </ContentTemplate>
        </asp:UpdatePanel>

        <input id="Button2" type="button" value="button" onclick="test()" />
    </form>


</body>
</html>
