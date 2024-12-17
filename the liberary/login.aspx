<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="the_liberary.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="shortcut icon" href="images/Untitled-3---(The-Last1).gif">

    <link rel="stylesheet" href="css/Login.css">
    <title>Login</title>

    <script type="text/javascript">
        function validateForm()
        {
                var username = document.getElementById('<%= TextBox1.ClientID %>').value;
                var password = document.getElementById('<%= TextBox2.ClientID %>').value;

                if (username.trim() === "" || password.trim() === "") {
                      alert("يجب إدخال اسم المستخدم وكلمة المرور");
                      return false;
                }

                return true;
        }
    </script>

</head>



<body>
    <form id="form1" runat="server">
            <header>
                <a href="login.aspx"class="logo"> Zad Book 🕮<nav class="navigation">
                    <a href="login.aspx">Login</a>
                    <a href="Register.aspx">Sign in</a>
                    <a href="#">Contact</a>
                    <a href="About.aspx">About</a>
                </nav>
                </a>
                &nbsp;</header> 
            <class class="form2">
                <img src="images/11zon_cropped (4).png" alt="user">
                &nbsp;<h2>login</h2>
                <asp:TextBox ID="TextBox1" CssClass="username" Placeholder="Email" runat="server" TextMode="Email" Font-Overline="False" ForeColor="Black"></asp:TextBox>
               
                <asp:TextBox ID="TextBox2" CssClass="password"  Placeholder="Password" runat="server" TextMode="Password" ForeColor="Black"></asp:TextBox>
                
                <asp:Button ID="Button1" CssClass="main-btn" runat="server" Text="login" OnClientClick="return validateForm();" OnClick="Button1_Click"/>
                
                <a href="#"><p>Forgot password?</p></a>
                <a id="reg" href="Register.aspx">Not have an account?</a>
            </class>
    </form>
            
</body>
</html>
