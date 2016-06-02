<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rating.aspx.cs" Inherits="TestAjax.Rating" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .ratingStar {
            font-size: 0pt;
            width: 13px;
            height: 12px;
            margin: 0px;
            padding: 0px;
            cursor: pointer;
            display: block;
            background-repeat: no-repeat;
        }
        .waitingRatingStar /*normal mode empty style*/ {
            background-image: url(Rating_default.gif);
        }
        .filledRatingStar /*normal mode filled style*/ {
            background-image: url(Rating_normal.gif);
        }
        .emptyRatingStar /*readonly mode empty style*/ {
            background-image: url(Rating_empty.gif);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div>
             <cc1:Rating ID="RatingRate" BehaviorID="RatingRate1" MaxRating="5" CurrentRating="3" 
             runat="server" StarCssClass="ratingStar" WaitingStarCssClass="waitingRatingStar" 
             FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar" 
             OnChanged="RatingRate_Changed" AutoPostBack="false"> 
         </cc1:Rating> 

         <script type="text/javascript"> 
                     Sys.Application.add_load( 
                         function() { 
                             $find("RatingRate1").add_EndClientCallback( 
                                function(sender, e) { 
                                    var result = e.get_CallbackResult(); 
                                    alert(result); 
                                } 
                             ); 
                         } 
                     ); 
         </script> 

        </div>
    </form>
</body>
</html>
