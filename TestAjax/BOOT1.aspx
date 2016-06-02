<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BOOT1.aspx.cs" Inherits="TestAjax.BOOT1" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap基础模板</title>
    <!-- Bootstrap -->
    <link href="Content/bootstrap.min.css" rel="stylesheet">
    <!-- 如果要使用Bootstrap的JS插件，则必须引入jQuery -->
    <script src="Scripts/jquery-2.1.4.min.js"></script>
    <!-- Bootstrap的JS插件 -->
    <script src="Scripts/bootstrap.js"></script>
    <script type="text/javascript">
        function LoadDiv(url) {
            var img = new Image();
            var bcgDiv = document.getElementById("divBackground");
            var imgDiv = document.getElementById("divImage");
            var imgFull = document.getElementById("imgFull");
            var imgLoader = document.getElementById("imgLoader");
            imgLoader.style.display = "block";
            img.onload = function () {
                imgFull.src = img.src;
                imgFull.style.display = "block";
                imgLoader.style.display = "none";
            };
            img.src = url;
            bcgDiv.style.display = "block";
            imgDiv.style.display = "block";
            return false;
        }
        function HideDiv() {
            var bcgDiv = document.getElementById("divBackground");
            var imgDiv = document.getElementById("divImage");
            var imgFull = document.getElementById("imgFull");
            if (bcgDiv != null) {
                bcgDiv.style.display = "none";
                imgDiv.style.display = "none";
                imgFull.style.display = "none";
            }
        }

    </script>
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            height: 50%;

        }

        .modal {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            -webkit-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            z-index: 100;
            opacity: 0.8;
            filter: alpha(opacity=0);
            -moz-opacity: 0.8;
            min-height: 100%;
        }

        #divImage {
            display: none;
            z-index: 1000;
            position: fixed;
            top: 50%;
            left: 50%;
            -webkit-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            background-color: White;
            height: 550px;
            width: 600px;
            padding: 3px;
            border: solid 1px black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-md-12 table-responsive">
                <div class="row">
                    <div class="col-md-6">
                        <div id="divBackground" class="modal">
                        </div>
                        <div id="divImage">
                            <table style="height: 100%; width: 100%">
                                <tr>
                                    <td valign="middle" align="center">
                                        <img id="imgLoader" alt="" src="images/Rating_default.gif" />
                                        <img id="imgFull" alt="" src="" style="display: none; height: 500px; width: 590px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" valign="bottom">
                                        <input id="btnClose" type="button" value="close" onclick="HideDiv()" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <input id="Button1" type="button" value="button" onclick="LoadDiv('images/images.jpg')" />
                <asp:GridView ID="gridprod" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered text-nowrap">
                    <Columns>
                    </Columns>
                    <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" />
                </asp:GridView>

            </div>
        </div>
    </form>
</body>
</html>
