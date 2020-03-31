<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="flipTimer/css/flipdown/flipdown.css" rel="stylesheet" />
    <!--mon link -->
    <link href="HomeStyle.css" rel="stylesheet" />
    <link href="css/mainstyle.css" rel="stylesheet" />

    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <!--flip timer---->
    <%--<link href="flipTimer/css/style.css" rel="stylesheet" />--%>
    <script src="flipTimer/js/flipdown/flipdown.js"></script>
    <script src="flipTimer/js/main.js"></script>
    <!--flip timer---->


    <title></title>
</head>
<body>

    <!----NavBar------------------------------>
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Home.aspx">Golf Academy</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Home.aspx">Home</a></li>
                    <li><a href="#Teams">Teams</a></li>
                    <li><a href="Schedule01.aspx">Schedule</a></li>
                    <li><a href="Contact01.aspx">Contact</a></li>
                    <li><a href="RegistrePage01.aspx" class="btn-success">Regester</a></li>
                    <!--for launge-->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">launge
                        <span class="caret"></span></a>
                        <ul class="dropdown-menu" style="background-color: black;color:white">
                              <li><a href="#">Anglais </a></li>
                              <li><a href="#">Francais</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!----------------------------------/NavBar---------------------------------------------->


    <!--home-->
    <section class="sections home text-center" id="accueil">
        <div class="overlay">
            <div class="container">

                <div class="home-content">

                    <h3 class="home-title">Morocco Golf Academy</h3>
                    <p class="lead home-desc">
                        Le Morocco Champions sera le deuxième tournoi de la saison 2020 du PGA Tour Champions. 
                        Il s’agira de la première épreuve de la formule stroke-play du PGA TOUR à être disputée sur le continent africain.
                      
                    </p>
                    <h4 style="color:white;font-style:italic">Wee Are Coming Soon....</h4>

                    <button class="btn button">Start Now </button>
                    <button class="btn button">Découvrir </button>
                    <br />
                    <br />

                    <!---Timer------->
                    <div class="timer_flipdown">

                        <div id="flipdown" class="flipdown"></div>
                    </div>


                    <!---Timer------->
                </div>
            </div>
        </div>
    </section>
    <hr />
    <!--/home-->

    <!--About-->

    <section class="sections about" id="About">
        <div class="container">
            <div class="section-header text-center">
                <h2 class="section-title">About Us</h2>
                <div class="line"><span></span></div>
                <p>
                    Morocco Champions Que vous soyez débutant ou un joueur confirmé, vous jouez tous les jours sur le parcours avec votre Pro.
                    9 trous pour ceux qui débutent et 18 trous pour les joueurs en niveau Perfectionnement.
                   ​Les Pros sont Français et parlent un Anglais courant.
                </p>

            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="about-info">
                        <h3>Bienvenu sur <span>Morocco Champions</span> academy</h3>
                        <p class="info-desc">
                            La compétition sera organisée au Samanah Golf Club à Marrakech du 27 janvier au 1er février 2020.
                                            Elle mettra aux prises 66 joueurs qui se disputeront une cagnotte de 2 millions de dollars. 
                                            Présidée par le Prince Moulay Rachid, l’ATH organise plusieurs événements internationaux, 
                                            dont le Trophée de golf Hassan II du Tour européen et la Coupe Lalla Meryem du Tour européen féminin.
                                            Le Morocco Champions sera le deuxième tournoi de la saison 2020 du PGA Tour Champions.
                                            Il s’agira de la première épreuve de la formule stroke-play du PGA TOUR à être disputée sur 
                                            le continent africain. 
                        </p>

                    </div>
                </div>
                <div class="col-md-6">
                    <div class="about-img">
                        <img src="image/golf-moreinfo.jpg" alt="img moreinfo">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--About-->
    <hr>
    <!--more info--------------->
    <section class="sections about" id="More_Info">
        <div class="container">
            <div class="section-header text-center">
                <h2 class="section-title">More Info</h2>
                <div class="line"><span></span></div>
                <p>
                    Morocco Champions Academy  Une école de golf avec une méthodologie et une pédagogie permettant des progressions significatives à tous les niveaux.
                    Stage d'évaluation.
                </p>
            </div>

        </div>
        <div class="container">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="image/terrain.jpeg" style="width: 100%" alt="terrain golf">
                        <div class="carousel-caption">
                            <h3>Marrakech Golf Academy</h3>

                        </div>
                    </div>

                    <div class="item">
                        <img src="image/compition.jpeg" style="width: 100%" alt="compition golf">
                    </div>

                    <div class="item">
                        <img src="image/visuel-marrakech.jpg" style="width: 100%" alt="Marrakech golf">
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

    </section>
    <!------------/more info--------------->

    <hr />
    <!------------------/team------------------------------------------>

    <section class="sections about">
        <div class="container">
            <div class="section-header text-center">
                <h2 id="Teams" class="section-title">Teams</h2>
                <div class="line"><span></span></div>
                <p>
                    Morocco Champions sera le deuxième tournoi de la saison 2020 du PGA TOUR champions. 
                    Il s’agira du premier événement en stroke play sanctionné par le PGA TOUR à être disputé sur le continent
                     africain.
                </p>
            </div>
            <!--teams-->
            <div class="teams">
                <div class="row">
                    <div class="column team_column">
                        <div class="card team_card">
                            <img src="image/samual.PNG" alt="Jane" style="width: 100%">
                            <div class="team_container">
                                <span>
                                    <h2>Jane Doe</h2>
                                    <p class="title_team">CEO & Founder</p>
                                    <p>.</p>
                                    <p>Jane.Doe@example.com</p>
                                </span>

                            </div>
                        </div>
                    </div>

                    <div class="column team_column">
                        <div class="card team_card">
                            <img src="image/jon.PNG" alt="Mike" style="width: 100%">
                            <div class="team_container">
                                <span>
                                    <h2>Mike Ross</h2>
                                    <p class="title_team">Art Director</p>
                                    <p>S.</p>
                                    <p>Mike.ross@example.com</p>
                            </div>
                        </div>
                    </div>

                    <div class="column team_column">
                        <div class="card team_card">
                            <img src="image/james.PNG" alt="John" style="width: 100%">
                            <div class="team_container">
                                <h2>John Doe</h2>
                                <p class="title_team">Designer</p>
                                <p>S.</p>
                                <p>due.john@example.com</p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <hr />
    <!-------------------------/Aur Partner ----------------------------------------------------------->
    <section class="sections about">
        <div class="container">
            <div class="section-header text-center">
                <h2 id="Sponsor" class="section-title">Sponsor</h2>
                <div class="line"><span></span></div>
                <p>
                    Thank YouFor All Sponsor the academy
                </p>
            </div>
            <div class="container-fluid text-center">
                <div class="row">
                    <div class="col-sm-3">
                        <img src="image/support/golf_royal.png" class="img-thumbnail" width="304" height="236">
                        <h4>POWER</h4>
                        <p>Lorem ipsum dolor sit amet..</p>
                    </div>
                    <div class="col-sm-3">
                        <img src="image/support/golf_tour.PNG" class="img-thumbnail" width="304" height="236">
                        <h4>LOVE</h4>
                        <p>Lorem ipsum dolor sit amet..</p>
                    </div>
                    <div class="col-sm-3">
                        <img src="image/support/master_golf.PNG" class="img-thumbnail" width="304" height="236">
                        <h4>JOB DONE</h4>
                        <p>Lorem ipsum dolor sit amet..</p>
                    </div>
                    <div class="col-sm-3 ">
                        <img src="image/support/logo_golf.PNG" class="img-thumbnail" width="304" height="236">
                        <h4>GREEN</h4>
                        <p>Lorem ipsum dolor sit amet..</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <hr />
    <!--  Contact and adresse-->

    <section class="sections about">
        <div class="container">
            <div class="section-header text-center">
                <h2 id="Cantact" class="section-title"> Location</h2>
                <div class="line"><span></span></div>

            </div>
            <!---------------------------------------------->

            <div class="row container_map">
                <div class="col-md-12 map col-xs-12 style="width: 100% !importan"t">
                     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d27183.41686948803!2d-7.968534435170939!3d31.60845702823989!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdaff1d1f4459e43%3A0x810fc5827a35bcd3!2sRoyal%20Golf%20Marrakech!5e0!3m2!1sfr!2sma!4v1585570268638!5m2!1sfr!2sma" width="100%" height="600" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
               <%-- <div class="col-md-6 contact-form">
                    <h1 class="title">Contact Us</h1>
                    <h2 class="subtitle">We are here assist you.</h2>
                    <form>
                        <input type="text" name="name" placeholder="Your Name" />
                        <input type="email" name="e-mail" placeholder="Your E-mail Adress" />
                        <input type="tel" name="phone" placeholder="Your Phone Number" />
                        <textarea name="text" id="" rows="8" placeholder="Your Message"></textarea>
                        <button class="btn-send">Get a Call Back</button>
                    </form>
                </div>--%>
            </div>
        </section>
            <!---------------------------------------------->
            <!----footer---------------------------->
           
            <!-- Footer -->
            <footer class="footer">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-4">
                            <span class="copyright">Copyright &copy; Aboussaid 2020</span>
                        </div>
                        <div class="col-md-4">
                            <ul class="list-inline social-buttons">
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fa fa-github" style="font-size:24px;color:black"></i>
                                        <%--<i class="fab fa-twitter"></i>--%>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fa fa-linkedin" style="font-size:24px;color:black"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fa fa-facebook-f" style="font-size:24px;color:black"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-4">
                            <ul class="list-inline quicklinks">
                                <li class="list-inline-item">
                                    <a href="#">Privacy Policy</a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">Terms of Use</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </footer>




        </div>
    
    <!--script main--->
    <script src="js/main.js"></script>
</body>
</html>
