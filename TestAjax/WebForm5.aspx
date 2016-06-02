<%@ Page Language="C#" Title="Meet the Team" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="TestAjax.WebForm5" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script type="text/javascript" src="../javascript/Usercontroljs.js">
    </script>
    <link id="Link2" href="../css/Usercontrol.css" rel="stylesheet" type="text/css" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </h1>
    <span class="page-heading">User</span>
    <hr class="horizontal-ruler" />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always"
        ChildrenAsTriggers="true">  
        <ContentTemplate>
            <table id="Usertable" cellspacing="20" align="center">
                <triggers>
 <tr><td class="txtfieldname">Branch :</td><td> 
 <asp:DropDownList ID="ddlbranchname" 
 CssClass="dropdownlist" runat="server" 
 DataTextField="Branch_name" DataValueField="Branch_Id" AutoPostBack="True" 
 >
 </asp:DropDownList></td>
 <td class="txtfieldname">
 User Type :</td>
 <td>
 <asp:DropDownList ID="ddlusertypesearching" 
 CssClass="dropdownlist" runat="server" 
 DataTextField="User_Typename" DataValueField="User_Type_Id" 
  
 AutoPostBack="True"></asp:DropDownList>
 </td>
 </tr>
 </triggers>
                <tr>
                    <td colspan="4" align="left">
                        <asp:Button ID="Btn_AddnewUser" runat="server"
                            CssClass="button" Text="Add New user" OnClick="Btn_AddnewUser_Click" />
                        <asp:HiddenField ID="Input_mode" runat="server" Value="I" />
                        <asp:HiddenField ID="User_Id" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4" style="height: 400px; vertical-align: top; align: center;">
                        <asp:GridView ID="GridView_BranchUsers" CssClass="GridViewStyle"
                            runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:TemplateField HeaderText="Sno" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_sno" runat="server" Text="test"></asp:Label>.
                                        <%-- <asp:HiddenField ID="User_Id" runat="server" Value="<%# Bind('User_Id') %>" />
                                        <asp:HiddenField ID="Usertypeid" runat="server" Value="<%# Bind('User_Type_Id') %>" />
                                        <asp:HiddenField ID="Gender" runat="server" Value="<%# Bind('Gender') %>" />
                                        <asp:HiddenField ID="Designation" runat="server" Value="<%# Bind('Designation') %>" />--%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Branch Name" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_branchname" runat="server" Text="branchname"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Firstname" HeaderText="First Name "
                                    SortExpression="Firstname" />
                                <asp:BoundField DataField="Lastname" HeaderText="Last Name"
                                    SortExpression="Lastname" />
                                <asp:BoundField DataField="Username" HeaderText="Username"
                                    SortExpression="Username" />
                                <asp:BoundField DataField="Password" HeaderText="Password"
                                    SortExpression="Password" />
                                <asp:TemplateField HeaderText="Active Status" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label ID="User_Active" runat="server" Text="active"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit1" CommandArgument="<%# Container.DataItemIndex %>">Edit</asp:LinkButton>
                                    </ItemTemplate>

                                </asp:TemplateField>
                            </Columns>
                            <HeaderStyle CssClass="GridViewHeaderStyle" />

                            <RowStyle CssClass="GridViewRowStyle" />
                        </asp:GridView>
                        <asp:Panel ID="Pnl_edituser" runat="server">

                            <table cellspacing="20" align="center" style="vertical-align: top; text-align: center;">


                                <tr>
                                    <td class="txtfieldname">First Name :</td>
                                    <td>
                                        <asp:TextBox ID="txtfirstname" runat="server" CssClass="txtbox"></asp:TextBox>

                                        <ajaxToolkit:FilteredTextBoxExtender
                                            ID="FilteredTextBoxExtender1" runat="server" FilterType="LowercaseLetters, UppercaseLetters"
                                            TargetControlID="txtfirstname"></ajaxToolkit:FilteredTextBoxExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="txtfieldname">Last Name :</td>
                                    <td>
                                        <asp:TextBox ID="txtlastname" runat="server" CssClass="txtbox"></asp:TextBox>

                                        <ajaxToolkit:FilteredTextBoxExtender
                                            ID="FilteredTextBoxExtender2" runat="server" FilterType="LowercaseLetters, UppercaseLetters"
                                            TargetControlID="txtlastname"></ajaxToolkit:FilteredTextBoxExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="txtfieldname">Gender</td>
                                    <td>
                                        <asp:RadioButton ID="Rdo_male" runat="server" Checked="True"
                                            GroupName="gender" Text="Male" />
                                        <asp:RadioButton ID="Rdo_female" runat="server" GroupName="gender"
                                            Text="Female" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="txtfieldname">Designation</td>
                                    <td>
                                        <asp:TextBox ID="txtdesignation" runat="server" CssClass="txtbox"></asp:TextBox>

                                        <ajaxToolkit:FilteredTextBoxExtender
                                            ID="FilteredTextBoxExtender3" runat="server" FilterType="LowercaseLetters, UppercaseLetters"
                                            TargetControlID="txtdesignation" ValidChars="_"></ajaxToolkit:FilteredTextBoxExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="txtfieldname">Username :</td>
                                    <td>
                                        <asp:TextBox ID="txtusername" runat="server" CssClass="txtbox"></asp:TextBox>


                                        <ajaxToolkit:FilteredTextBoxExtender
                                            ID="FilteredTextBoxExtender4" runat="server" FilterType="LowercaseLetters, UppercaseLetters"
                                            TargetControlID="txtusername"></ajaxToolkit:FilteredTextBoxExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="txtfieldname">Password :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtpwd" runat="server" CssClass="txtbox"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="txtfieldname">Confirm Password :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtcpwd" runat="server" CssClass="txtbox"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="txtfieldname">User Account Status :</td>
                                    <td>
                                        <asp:CheckBox ID="Chk_accountstatus" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Button ID="Btn_save" runat="server" CssClass="button" Text="Save"
                                            OnClick="Btn_save_Click" />
                                        &nbsp;&nbsp;&nbsp;
 <asp:Button ID="Btn_cancel" runat="server" CssClass="button" Text="Cancel" OnClick="Btn_cancel_Click" />
                                        <asp:Button ID="Btn_back" runat="server" CssClass="button" Text="Back"
                                            OnClick="Btn_back_Click" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>







