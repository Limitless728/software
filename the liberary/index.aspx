<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="the_liberary.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="shortcut icon" href="images/Untitled-3---(The-Last1).gif">
      <link rel="stylesheet" href="css/style.css">
      <title>ZAD BOOK</title>
</head>

<body>
    <form id="form1" runat="server">
        <header>
            <a href="index.aspx" class="logo"> ZAD BOOK 🕮</a>
            <nav class="navigation">
                <a href="login.aspx">Login</a>
                <a href="Register.aspx">Sign in</a>
                <a href="#contact">Contact</a>
                <a href="About.aspx">About</a>
            </nav>
            <div id="searchContainer" style="display: none;">
                <button id="searchButton">Search</button>
                <input type="text" id="searchBox" placeholder="Search about product">
                

            </div>


            <div class="icons">
                <div class="fa fa-user" id="login-btn"></div>
            </div>


            <script type="text/javascript">
                document.getElementById("login-btn").addEventListener("click", function() {
                var searchContainer = document.getElementById("searchContainer");
                if (searchContainer.style.display === "none") {
                    searchContainer.style.display = "block";
                } else {
                    searchContainer.style.display = "none";
                }
                });
                </script>

        </header>  
        <section class="main">
            <div>
                <h2>Hello reader . . .<br><span>Here u will read the best</span></h2>
                <h3>Enjoy your jorney</h3>
                <a href="#Read" class="main-btn">Get started now</a>
                <div class="social-icons">
                    <a href="https://www.facebook.com/zyadfawzy.58"><i class="fab fa-facebook"></i></a>
                    <a href="https://www.instagram.com/zyad_roshdy"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-google"></i></a>
                    <a href="https://twitter.com/Zyad_Roshdy"><i class="fab fa-twitter"></i></a>
                </div>
            </div>
        </section>
        <section  class="cards" id="Read">
            <h2 class="title">Read</h2>
            <div class="content">
                <div class="card">
                    <div class="icon">
                       <a href="Novels.aspx"><span style="display: inline-block; font-size: 120px; color: #285f1c;">🕮</span></a>
                
                    </div>
                    <div class="info">
                      <h3>Novels</h3>
                    </div>
                </div>
                <div class="card">
                    <div class="icon">
                      <a href="Stories.aspx"><span style="display: inline-block; font-size: 120px; color: #285f1c;">🕮</span></a>
                    </div>
                    <div class="info">
                       <h3>Stories</h3>
                    </div>
                </div>
        </section>

        <section class="cards contact" id="contact">
         <h2 class="title">Contact us</h2>
          <div class="content">
            <div class="card">
                <div class="icon">
                   <span><i class="fas fa-phone"></i></span>
                </div>
                <div class="info">
                    <h3>Phone</h3>
                    <p>+201551006323</p>
                </div>
            </div>
            <div class="card">
                <div class="icon">
                  <span><i class="fas fa-envelope"></i></a></span>
                </div>
                <div class="info">
                    <h3>Email</h3>
                    <p>zadbook1@gmail.com</p>
                </div>
            </div>
          </div>
        </SECTion>

        <footer class="footer">
                <p class="footer-title">ZAD BOOK 🕮</p>
                <div class="social-icons">
                <a href="https://www.facebook.com/zyadfawzy.58"><i class="fab fa-facebook"></i></a>
                <a href="https://www.instagram.com/zyad_roshdy"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-google"></i></a>
                <a href="https://twitter.com/Zyad_Roshdy"><i class="fab fa-twitter"></i></a>
            </div>
        </footer>
    </form>
</body>
</html>
