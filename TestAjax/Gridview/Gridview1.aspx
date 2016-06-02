<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gridview1.aspx.cs" Inherits="TestAjax.Gridview.Gridview1" %>

<%@ Register Src="~/UserControls/U_Label.ascx" TagName="Country" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .AscendingHeaderStyle {
            height: 30px;
            background-color: #499DF5;
            color: #ffffff;
            font-size: 11px;
            font-weight: normal;
            font-family: Arial, Helvetica, sans-serif;
            text-transform: capitalize;
            letter-spacing: .3px;
            background-image: url(../images/SortAsc.png);
            background-repeat: no-repeat;
            background-position: left;
            background-position: 3px center;
        }

        .DescendingHeaderStyle {
            height: 30px;
            background-color: #499DF5;
            color: #ffffff;
            font-size: 11px;
            font-weight: normal;
            font-family: Arial, Helvetica, sans-serif;
            text-transform: capitalize;
            letter-spacing: .3px;
            background-image: url(../images/SortDesc.png);
            background-repeat: no-repeat;
            background-position: left;
            background-position: 3px center;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1"
                AllowSorting="True" OnSorting="GridView1_Sorting" runat="server">
                <Columns>
                    <%--<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />--%>
                   <%-- <asp:CommandField ButtonType="Image" HeaderText="Edit/Update" HeaderStyle-HorizontalAlign="Left"
                        ShowEditButton="True" CancelText="cancel" EditText="EDIT" ShowCancelButton="true"
                        EditImageUrl="~/images/Ok.png"
                        UpdateImageUrl="~/images/Ok.png">
                        <ControlStyle Font-Names="Arial" Font-Size="X-Large" Font-Bold="False" />
                        <FooterStyle Font-Size="Small" Font-Names="Arial" Width="10px" />
                        <HeaderStyle Font-Names="Arial" Font-Size="15px" Font-Bold="False" ForeColor="White"
                            Height="10px" />
                        <ItemStyle Font-Names="Arial" Font-Size="Large" Width="8%"
                            Font-Bold="False" />
                    </asp:CommandField>--%>
                    <%--<asp:CommandField ItemStyle-Width="200px" ItemStyle-HorizontalAlign="Center" HeaderText="Edit/Update"
                        CancelImageUrl="../images/Ok.png" EditImageUrl="../images/Ok.png"
                        CausesValidation="true" UpdateImageUrl="../images/Ok.png" ButtonType="Image"
                        ShowEditButton="true" ValidationGroup="OptionNamegv" EditText="My Tooltip" />--%>

                    <%--  <asp:CommandField ShowSelectButton="True"
                        SelectText="<img src='../images/images.jpg' border=0 title='This is a Tooltip'>"></asp:CommandField>--%>

                        <asp:CommandField ShowEditButton="True"
                        EditText="<img src='../images/images.jpg' border=0 title='edit'>"></asp:CommandField>
                </Columns>

            </asp:GridView>
        </div>
    </form>
</body>
</html>
