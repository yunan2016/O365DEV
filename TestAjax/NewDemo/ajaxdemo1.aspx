<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajaxdemo1.aspx.cs" Inherits="TestAjax.NewDemo.ajaxdemo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript">
         function DisplayModal(p_strdate, valueToSelect) {
        
             document.getElementById("overlay").style.height = document.body.clientHeight + 'px';
             document.getElementById("overlay").className = "OverlayEffect";
             document.getElementById("modalMsg").className = "ShowModal";

                var element = document.getElementById('ddlp');
                element.value = valueToSelect;
            }
            function RemoveModal() {
                document.getElementById("modalMsg").className = "HideModal";
                document.getElementById("overlay").className = "";
                return false;
            }

        </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="SubmitButton" runat="server" Text="Click Here" OnClick="SubmitButton_Click" />
        </div>
        <div id="modalMsg" style="width: 200px; height: 100px; border-color: Black; border-style: solid; color: Red;"
            class="HideModal">
            This is modalpopup window
 <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
            <asp:DropDownList ID="ddlp" runat="server">
                <asp:ListItem Value="01">1</asp:ListItem>
                <asp:ListItem Value="02">2</asp:ListItem>
            </asp:DropDownList>

            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="lkn_check_onclick" Text="ok" />
            <asp:LinkButton ID="lnkOk" runat="server" OnClientClick="return RemoveModal();" Text="Cancel" />
        </div>
        <div id="overlay"></div>


       

    </form>
</body>
</html>
