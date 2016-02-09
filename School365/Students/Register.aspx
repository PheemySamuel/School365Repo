<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="School365.Students.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="generator" content="Mobirise v2.8.4, mobirise.com" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" href="../Image/Image2.PNG" type="image/x-icon" />
    <meta name="description" content="" />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:700,400&amp;subset=cyrillic,latin,greek,vietnamese" />
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../assets/mobirise/css/style.css" />
    <link rel="stylesheet" href="../assets/mobirise/css/mbr-additional.css" type="text/css" />
    <link href="../css/foundation.min.css" rel="stylesheet" />
    <title>Register</title>
</head>
<body>
    <form id="form1" runat="server">
        <section class="engine">
            <a rel="nofollow" href="#">OSIELE
            </a>
        </section>
        <section class="mbr-navbar mbr-navbar--freeze mbr-navbar--absolute mbr-navbar--auto-collapse" id="ext_menu-5">
            <div class="mbr-navbar__section mbr-section">
                <div class="mbr-section__container container">
                    <div class="mbr-navbar__container">
                        <div class="mbr-navbar__column mbr-navbar__column--s mbr-navbar__brand">
                            <span class="mbr-navbar__brand-link mbr-brand mbr-brand--inline">
                                <span class="mbr-brand__logo"><a href="Profile.aspx?grab=<%=value%>">
                                    <img class="mbr-navbar__brand-img mbr-brand__img" src="../Image/Image2.PNG"></a></span>
                                <span class="mbr-brand__name"><a class="mbr-brand__name text-white" href="#">OSIELE</a></span>
                            </span>
                        </div>
                        <div class="mbr-navbar__hamburger mbr-hamburger text-white mbr-added"><span class="mbr-hamburger__line"></span></div>
                        <div class="mbr-navbar__column mbr-navbar__menu">
                            <nav class="mbr-navbar__menu-box mbr-navbar__menu-box--inline-right">
                                <div class="mbr-navbar__column">
                                    <ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-decorator mbr-buttons--active mbr-buttons--only-links">
                                        <li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-primary" href="#">REGISTER</a></li>
                                        <li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-primary" href="#">RESULT</a></li>
                                        <li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-primary" href="Login.aspx">LOG OUT</a></li>
                                    </ul>
                                </div>

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

                       
                        <div class="mbr-box__magnet mbr-class-mbr-box__magnet--center-left col-lg-12 mbr-section__left">
                            <asp:Button ID="submit" runat="server" Text="Submit" CssClass="button alert round" OnClick="submit_Click" />
                            <asp:GridView ID="allSubject" runat="server" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:TemplateField HeaderText="Select">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="Crs" runat="server" class="input-sm" />   
                                                                                  
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="DepartmantID" />
                                    <asp:BoundField DataField="DepartmentName" HeaderText="Department" />
                                    <asp:BoundField DataField="SubjectID"/>
                                    <asp:BoundField DataField="SubjectName" HeaderText="Subject Name" />
                                    <asp:BoundField DataField="SubjectCombinID" />
                                    <asp:BoundField DataField="SubjectCombinName" HeaderText="Subject Combination" />                                   
                                    <asp:BoundField DataField="SubjectValue" HeaderText="Subject Value" />
                                    <asp:BoundField DataField="SubjectUnit" HeaderText="Subject Unit" />
                                </Columns>

                            </asp:GridView>
                        </div>
                       
                    </div>
                </div>
            </div>
        </section>

    </form>

    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/mobirise/js/script.js"></script>
    <script src="../assets/web/assets/jquery/jquery.min.js"></script>
    <script src="../assets/smooth-scroll/SmoothScroll.js"></script>
</body>
</html>
