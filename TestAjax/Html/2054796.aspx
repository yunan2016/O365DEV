<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2054796.aspx.cs" Inherits="TestAjax.Html._2054796" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script  type="text/javascript">

        function CallPrint(strid) {
            var prtContent = document.getElementById(strid);
            var WinPrint = window.open('', '', 'left=0,top=0,width=900,height=600,toolbar=1,scrollbars=1,status=0');
            WinPrint.document.write(prtContent.innerHTML);
            WinPrint.document.close();
            //alert(prtContent.innerHTML);
            WinPrint.focus();
            WinPrint.print();
            WinPrint.close();
            prtContent.innerHTML = "";
        }
</script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnprint" runat="server" Text="Print" OnClientClick="CallPrint('print');" />
            <div id="print">
                <table>
                    <tr>
                        <td style="width: 100%; background-color: Yellow;">This is Yellow BackGround.
                 
                        </td>
                    </tr>
                </table>
            </div>

        </div>
    </form>
</body>
</html>
