<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="json.aspx.cs" Inherits="TestAjax._2049158" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" >

        $("document").ready(function () {
            SearchSkillSet();
        });


        function SearchSkillSet() {
            $("#<%=txtSkillSet.ClientID %>").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        url: "json.aspx/GetSkillSetName",
                        data: "{'sk_code':'" + $("#<%=txtSkillSet.ClientID %>").val() + "'}",
                        dataType: "json",
                        success: function (data) {
                            if (data.length == "0") {
                                response([{ label: 'No results found.', val: -1 }]);
                            } else {
                                response(data);
                            }

                        },
                        error: function (result) {
                            alert("Error");
                        }
                    });
                }
            });
        }


    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtSkillSet" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
