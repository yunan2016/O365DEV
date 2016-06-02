<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TestAjax.Html.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function inherit(proto) {
            function F() { }
            F.prototype = proto;
            return new F();
        }

        function User(theName, theEmail) {
            this.name = theName;
            this.email = theEmail;
            this.currentScore = 0;
        }

        function Age() {
            this.age = "20";
        }
        User.prototype = {
            constructor: User,
            getElements: function () {
                return this.name + " " + this.email + " " + this.currentScore;
            },
            /* Question 1: */
            /* I want to be able to inherit Age/Child here. */
            /* ? */
            /* Tried following */
            /* prototype:{ constructor : Age } */
        }
        /* Question 2: */
        /*The following lines; from 27 - 30, causes newUser1.getElements() not be discoverable. Why? */

        User.prototype.getElements = function () {
            return this.name + " " + this.email + " " + this.currentScore;
        }

        User.prototype = inherit(new Age());

        /* Question 3*/
        /* Because of issue described in Question 2 I tried the following pattern instead and it works. Why? */
        /*
        User.prototype = inherit(new Age());
        User.prototype.getElements = function () {
            return this.name + " " + this.email + " " + this.currentScore;
        }
        */

        /* Question 4 */
        /* inherit(new Age()); line 39, makes code run fine but inherit(Age) doesn't. Why? */

        /*  What am I missing? */
        var newUser1 = new User('name1', 'name1@gmail.com');
        document.getElementById("mydiv").innerHTML = newUser1.getElements();
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="hlnkTextContent" runat="server" Target="_blank" NavigateUrl="javascript:OpenClipboard();">
                111
            </asp:HyperLink>
        </div>
    </form>
</body>
</html>
