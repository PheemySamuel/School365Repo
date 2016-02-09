<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="School365.Students.Profile" %>

<html>
<head runat="server">
 
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v2.8.4, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="../Image/Image2.PNG" type="image/x-icon">
  <meta name="description" content="">
  
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:700,400&amp;subset=cyrillic,latin,greek,vietnamese">
  <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="../assets/mobirise/css/style.css">
  <link rel="stylesheet" href="../assets/mobirise/css/mbr-additional.css" type="text/css">
  
  <title>EDUCATION 365 NCE</title>
  
</head>
<body>
<section class="engine"><a rel="nofollow" href="#">OSIELE
</a></section>
<section class="mbr-navbar mbr-navbar--freeze mbr-navbar--absolute mbr-navbar--auto-collapse" id="ext_menu-5">
    <div class="mbr-navbar__section mbr-section">
        <div class="mbr-section__container container">
            <div class="mbr-navbar__container">
                <div class="mbr-navbar__column mbr-navbar__column--s mbr-navbar__brand">
                    <span class="mbr-navbar__brand-link mbr-brand mbr-brand--inline">
                        <span class="mbr-brand__logo"><a href="Profile.aspx?grab=<%=value%>"><img class="mbr-navbar__brand-img mbr-brand__img" src="../Image/Image2.PNG"></a></span>
                        <span class="mbr-brand__name"><a class="mbr-brand__name text-white" href="#">OSIELE</a></span>
                    </span>
                </div>
                <div class="mbr-navbar__hamburger mbr-hamburger text-white mbr-added"><span class="mbr-hamburger__line"></span></div>
                <div class="mbr-navbar__column mbr-navbar__menu">
                    <nav class="mbr-navbar__menu-box mbr-navbar__menu-box--inline-right">
                        <div class="mbr-navbar__column"><ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-decorator mbr-buttons--active mbr-buttons--only-links"> <li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-primary" href="Register.aspx?grab=<%=value%>">REGISTER</a></li><li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-primary" href="Edit.aspx?grab=<%=value%>">EDIT</a></li><li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-primary" href="#">LOG OUT</a></li></ul></div>
                        
                    </nav>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="mbr-section mbr-section--relative mbr-after-navbar" id="msg-box4-3" style="background-color: rgb(41, 105, 176);">   
    <div class="mbr-section__container mbr-section__container--isolated container">
        <div class="row">
            <div class="mbr-box mbr-box--fixed mbr-box--adapted">
                
                <div class="mbr-box__magnet mbr-class-mbr-box__magnet--center-left col-sm-8 mbr-section__left">
                
                   <asp:Label ID="StudentDetails" runat="server" Text=" " style="font-family:'Brush Script MT';font-size:70px;color:white"></asp:Label><br />
                   
                    <asp:Label ID="phone" runat="server" text=" " style="font-family:'Brush Script MT';font-size:42px;color:white"></asp:Label><br />
                                      <asp:Label ID="course" runat="server" text=" " style="font-family:'Brush Script MT';font-size:42px;color:white"></asp:Label><br />
                     <asp:Label ID="email" runat="server" text=" " style="font-family:'Brush Script MT';font-size:42px;color:white"></asp:Label><br />
                </div>
                <div class="mbr-box__magnet mbr-box__magnet--top-left mbr-section__right col-sm-4">
                    <figure class="mbr-figure mbr-figure--adapted mbr-figure--caption-inside-bottom mbr-figure--full-width"><asp:Image ID="studentImage" runat="server" CssClass="mbr-figure__img" ImageUrl="~/Image/studentGuy.png" /></figure>
                </div>
            </div>
        </div>
    </div>
</section>

   <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="../assets/mobirise/js/script.js"></script>
  <script src="../assets/web/assets/jquery/jquery.min.js"></script>
  <script src="../assets/smooth-scroll/SmoothScroll.js"></script>
  
</body>
</html>
