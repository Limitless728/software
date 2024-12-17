<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="the_liberary.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="shortcut icon" href="images/Untitled-3---(The-Last1).gif">

    <link rel="stylesheet" href="css/register.css">
    <title>Sign in</title>

    <script type="text/javascript">
        function validatePassword()
        {
            var FirstName = document.getElementById('<%= TextBox1.ClientID %>').value;
            var LastName = document.getElementById('<%= TextBox2.ClientID %>').value;
            var Email = document.getElementById('<%= TextBox5.ClientID %>').value;
            var PhoneNumber = document.getElementById('<%= TextBox6.ClientID %>').value;
            var password = document.getElementById('<%= TextBox5.ClientID %>').value;
            var confirmPassword = document.getElementById('<%= TextBox6.ClientID %>').value;

            if (FirstName.trim() === "" || LastName.trim() === "" || Email.trim() === "" || PhoneNumber.trim() === "" || password.trim() === "" || confirmPassword.trim() === "") {
                alert("يجب إدخال جميع البيانات بشكل صحيح");
                return false;
            }

            if (password !== confirmPassword)
            {
                alert("كلمة المرور وتأكيد كلمة المرور غير متطابقين.");
                return false;
            }

            return true;
        }
</script>

</head>
<body>
    <form id="form1" runat="server">
       <header>
          <a href="Register.aspx" class="logo"> Zad Book 🕮</a>
          <nav class="navigation">  
              <a href="login.aspx">Login</a>
              <a href="Register.aspx">Sign in</a>
              <a href="#">Contact</a>
              <a href="About.aspx">About</a>
          </nav>
      </header>
      <section class="form1" aria-required="True">
          <h2>sign in</h2>
          <asp:TextBox ID="TextBox1" CssClass="text" Placeholder="First Name" runat="server" ForeColor="Black"></asp:TextBox>

          <asp:TextBox ID="TextBox2" CssClass="text1" Placeholder="Last Name" runat="server" ForeColor="Black"></asp:TextBox>

          <asp:TextBox ID="TextBox3" CssClass="email" Placeholder="Email" runat="server"  TextMode="Email" ForeColor="Black"></asp:TextBox>


          <asp:TextBox ID="TextBox4" CssClass="number" Placeholder="Phone Number" runat="server" TextMode="Phone" ForeColor="Black"></asp:TextBox>


          <asp:TextBox ID="TextBox5" CssClass="password" Placeholder="Password" runat="server" TextMode="Password" ForeColor="Black"></asp:TextBox>


          <asp:TextBox ID="TextBox6" CssClass="password1" Placeholder="Confirm Password" runat="server" TextMode="Password" ForeColor="Black"></asp:TextBox>


          <asp:Button ID="Button1" CssClass="main-btn" runat="server" Text="sign in" OnClientClick="return validatePassword();" OnClick="Button1_Click" />

          <a id="reg" href="login.aspx">You have an account?</a>
      </section>
      <section class="form2" aria-required="True">
          <label>gender :</label>

          <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Text="male" Value="1" id="male"></asp:ListItem>
                <asp:ListItem Text="female" Value="0" id="female"></asp:ListItem>
          </asp:RadioButtonList>


      </section>

    </form>
</body>
</html>
