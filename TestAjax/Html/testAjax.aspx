<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testAjax.aspx.cs" Inherits="TestAjax.Html.testAjax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-2.1.4.js"></script>
    <script type="text/javascript">
        $(document).ready
        (function () {

            $(document.getElementById('<%= btnShowMessageInLable.ClientID %>')).click
                (function () {
                    $.ajax
                        ({
                            type: "POST",
                            url: "testAjax.aspx/ShowMessageInLable",
                            data: "{}",
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success:
                                function (msg) {

                                    vlblMessage = document.getElementById('<%= lblMessage.ClientID %>');
                                    vlblMessage.innerHTML = msg.d;
                                    $("#HiddenField1").val(msg.d);
                                },
                            error:
                                function (XMLHttpRequest, textStatus, errorThrown) {
                                    alert('WebMethod call fail');
                                }

                        });

                    return false;
                }
                );
        }
        );

    </script>
    <script type="text/javascript">
        function dosmethe(ValueToSelect) {
            $.ajax
                        ({
                            type: "POST",
                            url: "testAjax.aspx/ShowMessageInLable",
                            data: "{}",
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success:
                                function (msg) {
                                    test(msg, ValueToSelect)                              
                                },
                            error:
                                function (XMLHttpRequest, textStatus, errorThrown) {
                                    alert('WebMethod call fail');
                                }

                        });
        }
        function test(msg, ValueToSelect)
        {
            vlblMessage = document.getElementById('<%= lblMessage.ClientID %>');
            vlblMessage.innerHTML = msg.d + ValueToSelect;
            $("#HiddenField1").val(msg.d);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnShowMessageInLable" runat="server" Text="Show Message In Lable" />
            <br />
            <asp:Label ID="lblMessage" runat="server" />
            <br />
            <asp:Button ID="setcallback" runat="server" OnClick="setcallback_Click" Text="getCallBack" />
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <input id="Button1" type="button" value="button" onclick="dosmethe(2)"/>
            <asp:TextBox ID="txtbox" runat="server" AutoPostBack="true" OnTextChanged="txtbox_TextChanged"></asp:TextBox>
        </div>

    </form>
</body>
</html>
