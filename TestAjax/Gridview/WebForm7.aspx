<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="TestAjax.Gridview.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script type="text/javascript">
        $(function () {
            SearchText();
        });
        function SearchText() {
            $(".autosuggest").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        url: "WebForm7.aspx/GetAutoCompleteData",
                        data: "{'particulars':'" + $('#txtParticulars').val() + "'}",
                        dataType: "json",
                        success: function (data) {
                            if (data.d.length > 0) {
                                debugger;
                                response($.map(data.d, function (item) {
                                    return {
                                        label: item.split('/')[0],
                                        val: item.split('/')[1]
                                    }
                                }));
                            }
                            else {
                                response([{ label: 'No Records Found', val: -1 }]);
                            }
                        },
                        error: function (result) {
                            alert("Error");
                        }
                    });
                },
                select: function (event, ui) {
                    if (ui.item.val == -1) {
                        return false;
                    }
                    $('#Label1').text(ui.item.val);
                }
            });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtParticulars" runat="server" class="autosuggest"></asp:TextBox>

           <img id="img1" src="<%= ResoulveImageUrl("1")  %>" 
      style="width:200px; height:200px" />


                <img id="img2" src="../images/images.jpg"
      style="width:200px; height:200px" />
        </div>
    </form>
</body>
</html>
