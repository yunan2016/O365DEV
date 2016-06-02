<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2054672.aspx.cs" Inherits="TestAjax.Html._2054672" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <script>
        function myfunction()
        {
            alert($("#DropDownList1").val());
            alert($( "#DropDownList1 option:selected" ).text())
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div>
                    <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                        runat="server">
                    </asp:GridView>
                </div>
                <div>
            </ContentTemplate>
        </asp:UpdatePanel>
     <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div>
                    <asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                    </asp:DropDownList>
					<asp:DropDownList ID="DropDownList2" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                    </asp:DropDownList>
					<asp:DropDownList ID="DropDownList3" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:GridView ID="GridView2" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                        runat="server">
                    </asp:GridView>
                </div>
                <div>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></div>
            </ContentTemplate>
        </asp:UpdatePanel>

            <asp:Label ID="comment" runat="server" Text='1234567890123' 
                                           Style="font-size: x-small; color: darkslateblue; width:80px; Height:auto; "/>
        <asp:LinkButton ID="lnkmore" runat="server" Text="...more" Visible="false" />
        <input id="Button1" type="button" value="button" onclick="myfunction()" />
    </form>
</body>
</html>
