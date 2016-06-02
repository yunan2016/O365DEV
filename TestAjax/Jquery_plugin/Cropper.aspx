<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cropper.aspx.cs" Inherits="TestAjax.Jquery_plugin.Cropper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/cropper/jquery.Jcrop.css" rel="stylesheet" />
    <link href="../Content/cropper/style-example.css" rel="stylesheet" />
    <link href="../Content/cropper/style.css" rel="stylesheet" />
    <script src="../Scripts/jquery-2.1.4.js"></script>
    <script src="../Scripts/jquery.Jcrop.js"></script>
    <script src="../Scripts/jquery.SimpleCropper.js"></script>
    <script type="text/javascript">
        $(".cropper").simpleCropper({
            aspectRatio: 16 / 9,
            modal: false,
            preview: ".extra-preview",
            done: function (data) {
                console.log(data);
            }
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="simple-cropper-images">
            <h1>Simple Cropper</h1>
            <img class="cropper" src="../images/images.jpg" />
            <img class="cropper" src="../images/Jcrop.gif" />
            <h2>Usage</h2>
            <div class="text">
                1. Include all scripts and css files to your html file.
            </div>
            <div class="text">
                2. Create element, which you would like to attach the Simple Cropper and then call simpleCropper().
            </div>


            <div class="text">
                That's it! Your freshly cropped image resides (base64 encoded) inside your .cropme element.
            </div>
        </div>

    </form>
</body>
</html>
