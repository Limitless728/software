<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Novels.aspx.cs" Inherits="the_liberary.Novels" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <link rel="shortcut icon" href="images/Untitled-3---(The-Last1).gif"> 
    <link rel="stylesheet" href="css/Novels.css">
    <title>Novels</title>
    <style type="text/css" >
        #floatingDiv {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(255, 255, 255, 0.7);
    z-index: 9999;
    text-align: center;
}

#floatingDiv img {
    margin-top: 1%;
}
    </style>

    <script type="text/javascript">
        function viewnovel(pdfPath) {
            var pdfEmbed = document.getElementById("pdfEmbed");
            pdfEmbed.setAttribute("src", pdfPath);



            var floatingDiv = document.getElementById("floatingDiv");
            if (floatingDiv.style.display === "none") {
                floatingDiv.style.display = "block";
                return false;
            } else {
                floatingDiv.style.display = "none";
                return false;
            }
            return true;
        }
</script>
</head>
<body>
    <form id="form1" runat="server">
   <header>
        <a href="index.aspx"class="logo"> ZAD BOOK 🕮</a>
        <nav class="navigation">
        <a href="login.aspx">Login</a>
        <a href="Register.aspx">Sign in</a>
        <a href="#contact">Contact</a>
        <a href="About.aspx">About</a>
        </nav>
   </header>

        <div id="floatingDiv" style="display: none;">
            <embed src="" type="application/pdf" id="pdfEmbed" width="100%" height="100%" />
        </div>

   <div class="container">

       

        

       <div class="box">
           <img src="images/Novels/BB.jpg">
           <h2>Breaking Bad</h2>
           <p>Walter White.</p>
           <span><small>EGP</small> 350 </span>
           <div class="rate">
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="fa-regular fa-star"></i>
           </div>
           <div class="options">
               <asp:Button ID="Button1" CssClass="readbutton" runat="server" Text="Read" OnClick="Button1_Click" />
           </div>
       </div>
       <div class="box">
           <img src="images/Novels/GOT.jpg">
           <h2>Game of thrones</h2>
           <p>The dead roam the earth.</p>
           <span><small>EGP</small> 340 </span>
           <div class="rate">
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
           </div>
           <div class="options">
               <asp:Button ID="Button2" CssClass="readbutton" runat="server" Text="Read" />
           </div>
       </div>
       <div class="box">
           <img src="images/Novels/prison break.jpg">
           <h2>Prison Break</h2>
           <p>Kilgore.</p>
           <span><small>EGP</small> 315 </span>
           <div class="rate">
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="fa-regular fa-star"></i>
           </div>
           <div class="options">
               <asp:Button ID="Button3" CssClass="readbutton" runat="server" Text="Read" />
           </div>
       </div>
       <div class="box">
           <img src="images/Novels/THE WITCHER.jpg">
           <h2>The Witcher</h2>
           <p>Haunting Encounters.</p>
           <span><small>EGP</small> 310 </span>
           <div class="rate">
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
           </div>
           <div class="options">
               <asp:Button ID="Button4" CssClass="readbutton" runat="server" Text="Read" />
           </div>
       </div>
       <div class="box">
           <img src="images/Novels/Narcos.jpg">
           <h2>Narcos</h2>
           <p>Kilgore.</p>
           <span><small>EGP</small> 325 </span>
           <div class="rate">
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
           </div>
           <div class="options">
               <asp:Button ID="Button5" CssClass="readbutton" runat="server" Text="Read" />
           </div>
       </div>
       <div class="box">
           <img src="images/Novels/PB 2.jpg">
           <h2>Peaky Blinders</h2>
           <p>Vampires.</p>
           <span><small>EGP</small> 330 </span>
           <div class="rate">
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="fa-regular fa-star"></i>
           </div>
           <div class="options">
               <asp:Button ID="Button6" CssClass="readbutton" runat="server" Text="Read" />
           </div>
       </div>
       <div class="box">
           <img src="images/Novels/VIKINGS.jpg">
           <h2>Vikings</h2>
           <p>King Ragnar.</p>
           <span><small>EGP</small> 335 </span>
           <div class="rate">
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="fa-regular fa-star"></i>
           </div>
           <div class="options">
               <asp:Button ID="Button7" CssClass="readbutton" runat="server" Text="Read" />
           </div>
       </div>
       <div class="box">
           <img src="images/Novels/mr robot.jpg">
           <h2>Mr Robot</h2>
           <p>Breaking free.</p>
           <span><small>EGP</small> 330 </span>
           <div class="rate">
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="filled fas fa-star"></i>
               <i class="fa-regular fa-star"></i>
           </div>
           <div class="options">
               <asp:Button ID="Button8" CssClass="readbutton" runat="server" Text="Read" />
           </div>
       </div>
    </div>
    <footer class="footer">
       <p class="footer-title">NOVELS</p>
</footer>
    </form>
</body>
</html>
