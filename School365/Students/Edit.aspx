<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="School365.Students.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="generator" content="Mobirise v2.8.4, mobirise.com"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="shortcut icon" href="../Image/Image2.PNG" type="image/x-icon"/>
    <meta name="description" content=""/>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:700,400&amp;subset=cyrillic,latin,greek,vietnamese"/>
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../assets/mobirise/css/style.css"/>
    <link rel="stylesheet" href="../assets/mobirise/css/mbr-additional.css" type="text/css"/>

    <title>EDUCATION 365 NCE</title>
</head>
<body>
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
                                <img class="mbr-navbar__brand-img mbr-brand__img" src="../Image/Image2.PNG"/></a></span>
                            <span class="mbr-brand__name"><a class="mbr-brand__name text-white" href="#">OSIELE</a></span>
                        </span>
                    </div>
                    <div class="mbr-navbar__hamburger mbr-hamburger text-white mbr-added"><span class="mbr-hamburger__line"></span></div>
                    <div class="mbr-navbar__column mbr-navbar__menu">
                        <nav class="mbr-navbar__menu-box mbr-navbar__menu-box--inline-right">
                            <div class="mbr-navbar__column">
                                <ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-decorator mbr-buttons--active mbr-buttons--only-links">
                                    <li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-primary" href="Register.aspx?grab=<%=value%>">REGISTER</a></li>
                                    <li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-primary" href="Edit.aspx?grab=<%=value%>"="#">EDIT</a></li>
                                    <li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-primary" href="#">LOG OUT</a></li>
                                </ul>
                            </div>

                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <form id="form" runat="server">
        <section class="mbr-section mbr-section--relative mbr-after-navbar" id="msg-box4-3" style="background-color: rgb(41, 105, 176);">
            <div class="mbr-section__container mbr-section__container--isolated container">
                <div class="row">
                    <div class="col-lg-4"></div>
                     <div class="col-lg-4"></div>
                <div class="col-lg-4" style="float:right">
                    <label style="color:white;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Image Upload</label>
                     <asp:FileUpload ID="getImage" runat="server" placeholder="Image Upload" CssClass="form-control" /></div>
                    </div>
                <br />
                <div class="row">
                   
                    <div class="col-sm-4 col-sm-offset-0">
                        <div class="form-control input-group-lg">
                            <label>Country</label>
                            <asp:DropDownList ID="country" runat="server">
                                <asp:ListItem>Nigeria</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <hr />
                        <div class="form-control input-lg">
                            <label>State Of Origin</label>
                            <asp:DropDownList ID="sor" runat="server">
                                <asp:ListItem>Abia</asp:ListItem>
                                <asp:ListItem>Adamawa</asp:ListItem>
                                <asp:ListItem>Akwa-Ibom</asp:ListItem>
                                <asp:ListItem>Anambra</asp:ListItem>
                                <asp:ListItem>Abuja</asp:ListItem>
                                <asp:ListItem>Bauchi</asp:ListItem>
                                <asp:ListItem>Bayelsa</asp:ListItem>
                                <asp:ListItem>Benue</asp:ListItem>
                                <asp:ListItem>Borno</asp:ListItem>
                                <asp:ListItem>Cross River</asp:ListItem>
                                <asp:ListItem>Delta</asp:ListItem>
                                <asp:ListItem>Ebonyi</asp:ListItem>
                                <asp:ListItem>Edo</asp:ListItem>
                                <asp:ListItem>Ekiti</asp:ListItem>
                                <asp:ListItem>Enugu</asp:ListItem>
                                <asp:ListItem>Gombe</asp:ListItem>
                                <asp:ListItem>Imo</asp:ListItem>
                                <asp:ListItem>Jigawa</asp:ListItem>
                                <asp:ListItem>Kaduna</asp:ListItem>
                                <asp:ListItem>Kano</asp:ListItem>
                                <asp:ListItem>Katsina</asp:ListItem>
                                <asp:ListItem>Kebbi</asp:ListItem>
                                <asp:ListItem>Kogi</asp:ListItem>
                                <asp:ListItem>Kwara</asp:ListItem>
                                <asp:ListItem>Lagos</asp:ListItem>
                                <asp:ListItem>Nassarawa</asp:ListItem>
                                <asp:ListItem>Niger</asp:ListItem>
                                <asp:ListItem>Ogun</asp:ListItem>
                                <asp:ListItem>Ondo</asp:ListItem>
                                <asp:ListItem>Osun</asp:ListItem>
                                <asp:ListItem>Oyo</asp:ListItem>
                                <asp:ListItem>Plateau</asp:ListItem>
                                <asp:ListItem>Rivers</asp:ListItem>
                                <asp:ListItem>Sokoto</asp:ListItem>
                                <asp:ListItem>Taraba</asp:ListItem>
                                <asp:ListItem>Yobe</asp:ListItem>
                                <asp:ListItem>Zamfara</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <hr />
                        <div class="form-control input-lg ">
                            <asp:TextBox ID="Lga" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-sm-4 col-sm-offset-0">
                        <div class="form-control input-lg">
                            <asp:TextBox ID="FirstName" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
                        <hr />
                        <div class="form-control input-lg">
                            <asp:TextBox ID="SurnName" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
                        <hr />
                        <div class="form-control input-lg">
                            <asp:TextBox ID="MiddleName" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-sm-4 col-sm-offset-0">
                        <div class="form-control input-lg">
                            <asp:DropDownList ID="Sex" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <hr />
                        <div class="form-control input-lg">
                            <asp:TextBox ID="Email" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
                        <hr />
                        <div class="form-control input-lg">
                            <asp:TextBox ID="PhoneNumber" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <br />
        <div class="row">
             <div class="col-lg-6">
                <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn btn-lg btn-danger" style="float:right" OnClick="submit_Click" />
            </div>
            
            
           
        </div>
    </form>
</body>
</html>
