<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="TestAjax.WebForm9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.4.js"></script>
    <script type="text/javascript">

        $("#Button3").click(function () {

            var jData = {};
            var jsonstr1 = '{ "checkOut": "5", "checkIn": "luke"}';
            var checkout = $('#txtRateFrom').val();

            var checkin = $('#txtRateTo').val();
            var jsonstr = '{ "checkOut":' + checkout + ', "checkIn":' + checkin + '}';

            jData.jsonstr = jsonstr;
            $.ajax({
                cache: false,
                type: "POST",
                async: false,
                url: "WebForm9.aspx/ShowMessageInLable",
                data: JSON.stringify(jData),
                contentType: "application/json",
                dataType: "json",
                success: function (data) {
                    alert(data);
                    test();
                },
                error: function (xhr) {
                    alert(xhr.responseText);
                }
            });

            function test() {
                alert("123");
            }
        });
        function arr() {
            window.c = 0;
            $("#Text1").val("1");
            window.setTimeout("window.dosth()", 100, {});
        }
        function dosth() {
            getDate();
            $("#Text1").val("0");
        }
        function getDate(i, foo2) {

            var jData = {};
            var jsonstr1 = '{ "Name": "5", "Addresses": ["luke","1"]}';
            var checkout = $('#txtRateFrom').val();

            var checkin = $('#txtRateTo').val();
            var jsonstr = '{  "table": "holi", "checkOut":' + 2 + ', "checkIn":' + checkin + '}';

            jData.jsonstr = jsonstr1;
            $.ajax({
                cache: false,
                type: "POST",
                async: false,
                url: "WebForm9.aspx/ShowMessageInLable",
                data: JSON.stringify(jData),
                contentType: "application/json",
                dataType: "json",
                success: function (data) {

                    foo2(i);
                },
                error: function (xhr) {
                    alert(xhr.responseText);
                }
            });
            function foo2(i) {
                alert("123");
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">

        <table id="tbl1" runat="server" cellpadding="0" cellspacing="3">
            <tr>
                <td>Rate&nbsp;&nbsp;
                </td>
                <td>from</td>
                <td>
                    <asp:TextBox ID="txtRateFrom" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>to</td>
                <td>
                    <asp:TextBox ID="txtRateTo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Exchange rate</td>
                <td>from</td>
                <td>
                    <asp:TextBox ID="txtExchangeFrom" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>to</td>
                <td>
                    <asp:TextBox ID="txtExchangeTo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Yield</td>
                <td>from</td>
                <td>
                    <asp:TextBox ID="txtYieldFrom" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>to</td>
                <td>
                    <asp:TextBox ID="txtYieldTo" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            <input id="Text1" type="text" />
            <asp:Button ID="Button1" runat="server" Text="Button" ValidationGroup="grp" />
            <input type="button" onclick="getDate(1, 1)" />
            <input type="button" onclick="arr()" />


        </p>
        <asp:ListBox ID="DateListBox" runat="server" AppendDataBoundItems="True" SelectionMode="Multiple">
            <asp:ListItem Text="01 Jan 2015" Value="1" />
            <asp:ListItem Text="01 Feb 2015" Value="2" />
            <asp:ListItem Text="01 Mar 2015" Value="3" />
            <asp:ListItem Text="01 Apr 2015" Value="4" />
        </asp:ListBox>
    </form>
</body>
</html>
