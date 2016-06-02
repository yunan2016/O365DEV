<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TestAjax.Html.Slide.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../../Scripts/jquery-2.1.4.min.js"></script>
    <script src="../../Scripts/mootools-1.2.1-core-yc.js"></script>
    <script src="../../Scripts/jd.gallery.js"></script>
    <script type="text/javascript">
        function startGallery() {
            var myGallery = new gallery($('myGallery'), {
                timed: false
            });
        }
        window.addEvent('domready', startGallery);
 </script> 
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="myGallery">
                <div class="imageElement">
                    <h3>Item 1 Title</h3>
                    <p>Item 1 Description</p>
                    <a href="mypage1.html" title="open image" class="open"></a>
                    <img src="~/images/images.jpg" class="full" />
                    <img src="~/images/CancelRed.png" class="thumbnail" />
                </div>
                <div class="imageElement">
                    <h3>Item 2 Title</h3>
                    <p>Item 2 Description</p>
                         <a href="mypage1.html" title="open image" class="open"></a>
                    <img src="~/images/images.jpg" class="full" />
                    <img src="~/images/CancelRed.png" class="thumbnail" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
