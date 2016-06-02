<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="TestAjax.Gridview.WebForm5" %>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Show image preview before image upload</title>

    <script src="//code.jquery.com/jquery-1.11.2.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        function handleFileSelect(evt) {
            if (evt.target.files) {
                var files = evt.target.files; // FileList object
                // Loop through the FileList and render image files as thumbnails.
                for (var i = 0, f; f = files[i]; i++) {
                    // Only process image files.
                    if (!f.type.match('image.*')) {
                        continue;
                    }
                    var reader = new FileReader();
                    // Closure to capture the file information.
                    reader.onload = (function (theFile, c) {
                        return function (e) {
                            // Render thumbnail.
                            var div = document.createElement('div');
                            div.style.width = "330px";
                            div.style.cssFloat = "left";
                            div.style.padding = "10px 0px";
                            div.innerHTML = ['<div id="ReviewPic' + parseInt(c) + '" style="float: left; clear: both;width: 330px;"><div class="ImgBlock"><img class="thumb" src="', e.target.result, '" title="', escape(theFile.name), '"/><span class="remove_thumb" onclick="RemoveImage(\'ReviewPic' + parseInt(c) + '\', \'ImageDescr' + parseInt(c) + '\');"></span></div><div class="TextBlock"><textarea id="ImageDescr' + parseInt(c) + '" type="text" cols="25" rows="4" name="ImageDescr' + parseInt(c) + '"></textarea></div></div>'].join('');
                            document.getElementById('list').insertBefore(div, null);
                        };
                    })(f, i);
                    // Read in the image file as a data URL.
                    reader.readAsDataURL(f, i);
                }
            }
        }

        function RemoveImage(imgToRemove, imgToExclude) {
            document.getElementById(imgToRemove).remove();
            removalList.push(imgToExclude);
            document.getElementById("ExcludeList").value = removalList.toString();
        }

    </script>

</head>

<body>

    <form id="form1" runat="server">

      <table border="0" cellpadding="1" cellspacing="0">
                        <tr>
                            <td><strong>Add a photo</strong> (jpg, png 10Mb max)</td>
                        </tr>
                        <tr>
                            <td><output id="list"></output></td>
                        </tr>
                        <tr>
                            <td><asp:FileUpload ID="PictureFiles" ClientIDMode="Static" runat="server" AllowMultiple="true" style="width: 340px;" />
                            </td>
                        </tr>
                    </table>

    </form>

</body>


</html>
