<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="TestAjax.NewDemo.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-2.1.4.js"></script>
    <script type="text/javascript">
        $(function () {
            $("[id*=rptTransporter] [id*=lnkDelete]").click(function () { alert("1");})
               
        })
        function isAlpha(keyCode) {
            return ((keyCode >= 65 && keyCode <= 90) || (keycode >= 97 && keycode <= 122) || (keycode >= 48 && keycode <= 57) || keyCode == 8 || keyCode == 32 || keyCode == 190)
        }
    </script>
    <style type="text/css">
        #TextBox4 {
            margin-left:18px
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="text" onkeydown = "return isAlpha(event.keyCode);" class="form-control" id="trcode" placeholder="Code"/>

            <asp:Label ID="lblPoID" runat="server" Text="lblPoID"></asp:Label>

            <asp:GridView ID="gvPoItem" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="po_ItemID" HeaderText="PO Item Number" />
                    <asp:BoundField DataField="purchaseOrderID" HeaderText="PO Number" />
                    <asp:BoundField DataField="productID" HeaderText="Product Number" />
                    <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                 
                </Columns>
            </asp:GridView>


            <asp:Repeater ID="Repeater1" runat="server" >
                         <HeaderTemplate>
                            <table id="rptTransporter" class="hover" >
                                <thead>
                                <tr >
                                <th>Att1</th>
                                <th>Att2</th>
                                </tr>
                                    </thead>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <div >
                            <tr >
                                <td>
                                    <%# Eval("Att1") %>
                                </td>
                                <td>
                                    <%# Eval("Att2") %>
                                </td>
                                <td>
                                    <a id="lnkEdit" href="#">Edit</a>
                                </td>
                                <td>
                                    <a id="lnkDelete" href="#">Delete</a>
                                </td>
                            </tr>
                                </div>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
        </div>

        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>   or     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></div>
           <div>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>          <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></div>
   
        
        <div>
        <div style="float: left;">
            <div>Textbox1</div>
            <div>Textbox2</div>
        </div>
        <div style="float: left;">
            OR
        </div>
        <div style="float: left;">
            <div>Textbox1</div>
            <div>Textbox3</div>
        </div>
    </div>
         </form>
</body>
</html>
