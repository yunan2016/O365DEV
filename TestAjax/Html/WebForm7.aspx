<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="TestAjax.Html.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <asp:ScriptManager runat="server" ID="sc1"></asp:ScriptManager>
        <asp:UpdatePanel runat="server" ID="UpdSubmit_1" ChildrenAsTriggers="true" UpdateMode="Conditional">
            <ContentTemplate>
                <triggers>
                <asp:AsyncPostBackTrigger ControlID="btnSubmit_1" EventName="Click" />
            </triggers>
                <li><a href="javascript:void(0)">
                    <div class="iconDetails commtSlideDetails">
                        <div class="commentForm">
                            <textarea id="txtComments_1" runat="server"></textarea>
                            <div class="commentsContainer clearfix">

                                <asp:Button ID="btnSubmit_1" runat="server" Text="Submit" OnClick="btnSubmit_Click" OnClientClick="return fnValidateComment1();" />

                                <input type="reset" class="cancelComment" value="Cancel" />
                                <div class="commentInnerDetails">
                                    <div class="commentsCount">
                                        <span><i class="fa fa-comment-o"></i></span>
                                        <span id="spCommentsCount_1" runat="server"></span>
                                    </div>
                                    <!--commentsCount-->
                                </div>
                                <!--ComentDetails-->
                            </div>
                            <!--commentsContainer-->
                        </div>
                    </div>
                    <!--iconDetails--></li>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
