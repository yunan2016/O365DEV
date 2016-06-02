<!DOCTYPE html>
<script runat="server">
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #addTable {
            height: 200px;
            border: 1px solid;
        }

            #addTable tr {
                border: 1px solid;
            }

            #addTable td {
            }
    </style>
    <script type="text/javascript">
        function checkInfo() {
            //GET the data
            var data = document.getElementById("editWid").value;
            //check if filled
            if (!!data) {
                addTable(data);
            }
        }
        function addTable(data) {
            //set first row's css  by  "data"
            var table = '<table id="addTable"  width="100%">'
                 + '<tr style="width:'+data+'"><td></td><td></td><td></td><td></td><td></td></tr>'                  
                 + '</table>';

            document.getElementById("editProAttOpt").innerHTML = table
        }
    </script>
</head>
<body>
    <div>
        <table >
            <tr id="proEditRowWid">
                <td>
                    <input id="checkWid" /></td>
                <td>
                    <label for="checkWid">Width:</label></td>
                <td>
                    <input id="editWid" /></td>
            </tr>


            <tr  style="text-align:center"  id="proEditRowContents">
                <td>
                    <input id="checkCon" /></td>
                <td>
                    <label for="checkCon">Contents:</label></td>
                <td>
                    <select id="editCon" runat="server"></select></td>
            </tr>
            <tr>
                <td colspan="3">
                    <div id="editProAttOpt"></div>
                </td>
            </tr>
        </table>
    </div>
    <input type="button" onclick="checkInfo()" value="111" />

</body>
</html>
