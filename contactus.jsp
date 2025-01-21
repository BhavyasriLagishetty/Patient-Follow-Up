<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <head>
        <!-- Title -->
        <title>Patient Follow Up</title>
        <!-- Meta -->
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <!-- Favicon -->
        <link href="favicon.ico" rel="shortcut icon">
        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.css" rel="stylesheet">
        <!-- Template CSS -->
        <link rel="stylesheet" href="assets/css/animate.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/nexus.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/responsive.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/custom.css" rel="stylesheet">
        <!-- Google Fonts-->
        <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300" rel="stylesheet" type="text/css">
    </head>
        <%
        if (request.getParameter("m1") != null) {%>
    <script>alert('Your Query is Rigistered');</script>
    <%}
        if (request.getParameter("m2") != null) {%>
    <script>alert('Your Query is Not Rigistered');</script> 

    <%}
    %>
    
    <body>
        <div id="body-bg">
            <!-- Phone/Email -->
            <div id="pre-header" class="background-gray-lighter">
                <div class="container no-padding">
                    <div class="row hidden-xs">
                        <div class="col-sm-6 padding-vert-5">
                           
                        </div>
                        <div class="col-sm-6 text-right padding-vert-5">
                       
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Phone/Email -->
            <!-- Header -->
            <div id="header">
                <div class="container">
                    <div class="row">
                        <!-- Logo -->
                        <div class="logo">
                            <a href="index.html" title="">
                                <img src="assets/img/logo.png" alt="Logo" />
                            </a>
                        </div>
                        <!-- End Logo -->
                    </div>
                </div>
            </div>
            <!-- End Header -->
            <!-- Top Menu -->
<div id="hornav" class="bottom-border-shadow">
                <div class="container no-padding border-bottom">
                    <div class="row">
                        <div class="col-md-8 no-padding">
                            <div class="visible-lg">
                                <ul id="hornavmenu" class="nav navbar-nav">
                                    <li>
                                        <a href="index.html" class="fa-home ">Home</a>
                                    </li>
                                    <li>
                                        <a href="pharmacist.jsp" class="fa-comment ">pharmacist</a>
                                       
                                    </li>
                                    <li>
                                        <a href="doctor.jsp" class="fa-comment ">Doctor</a>
                                    </li>                                    
                                    
                                    <li>
                                        <a href="patient.jsp" class="fa-gears ">Patient</a>
                                    </li>
                                    
                                     <li>
                                        <a href="admin.jsp" class="fa-comment ">Admin</a>
                                    </li>
                                    
                                    <li class="active">
                                        <a href="contactus.jsp" class="fa-comment active">Contact US</a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4 no-padding">
                            <ul class="social-icons pull-right">
                                <li class="social-rss">
                                    <a href="#" target="_blank" title="RSS"></a>
                                </li>
                                <li class="social-twitter">
                                    <a href="#" target="_blank" title="Twitter"></a>
                                </li>
                                <li class="social-facebook">
                                    <a href="#" target="_blank" title="Facebook"></a>
                                </li>
                                <li class="social-googleplus">
                                    <a href="#" target="_blank" title="Google+"></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Top Menu -->
            <!-- === END HEADER === -->
            <!-- === BEGIN CONTENT === -->
            <div id="slideshow" class="bottom-border-shadow">
                <div class="container no-padding background-white bottom-border">
                    <div class="row">
                        <!-- Carousel Slideshow -->
                        <div id="carousel-example" class="carousel slide" data-ride="carousel">
                            <!-- Carousel Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example" data-slide-to="1"></li>
                                <li data-target="#carousel-example" data-slide-to="2"></li>
                            </ol>
                            <div class="clearfix"></div>
                            <!-- End Carousel Indicators -->
                            <!-- Carousel Images -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="assets/img/slideshow/slide1.jpg">
                                </div>
                                <div class="item">
                                    <img src="assets/img/slideshow/slide2.jpg">
                                </div>
                                <div class="item">
                                    <img src="assets/img/slideshow/slide3.jpg">
                                </div>
                                <div class="item">
                                    <img src="assets/img/slideshow/slide4.jpg">
                                </div>
                            </div>
                            <!-- End Carousel Images -->
                            <!-- Carousel Controls -->
                            <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                            <!-- End Carousel Controls -->
                        </div>
                        <!-- End Carousel Slideshow -->
                    </div>
                </div>
            </div>
             <h1 align="center"">Contact US</h1>
             <table align="center"><th><form action="contactusact.jsp" method="get">
            <br><br>  <label style="  font-size: 20px; margin-left: 28px; ">Name: <input name="name" type="text" placeholder="enter name" style="margin-left: 167px; width: 350px;"/></label>
          <br><br>  <label style=" font-size: 20px; margin-left: 28px;">Phone number: <input name="phone" type="text" placeholder="enter Phone number:"style="margin-left: 90px; width: 350px;"/></label>
         <br><br>   <label style=" font-size: 20px; margin-left: 28px;">Email: <input name="email" type="text" placeholder="enter mail id"style="margin-left: 170px; width: 350px;"/></label>
         <br><br>   <label style=" font-size: 20px; margin-left: 28px;">Comments & Questions:<textarea placeholder="Comments & Questions" name="comment" style="width:350px; border:1px solid #999999; margin-top: 0px; "></textarea></label>
            <br><br>
            <input type="submit" name="btn" class ="cbtn" /><br><br>
            
        </form></th>
    
    </div>
    <th>
         <div class="contact-us-right">
             <h1 style="font-size: 25px; margin-top: -2px; margin-left: 12px;">M/S : Mamatha Hospital</h1><br><br>
            <p style="margin-top: -50px;margin-left: 22px;">(A Unit of OMNI Hospitals)<br>
                <b style="font-size: 20px;">Mr. Gopal Komati</b><br>
                <b style="font-size: 20px;">Add..</b>Room No. 334, Kinnera Boys Hostel, Inside JntuH Campus, 
        Kukatpally, Hyderabad - 500085<br>
            <b style="font-size: 20px;">Phone</b> : +(91)-7702295646
            +(91)-9993146134<br>
            <b style="font-size: 20px;">E-Mail</b> : komati.gopal@gmail.com 
            
            </p></th></table>
            
        </div> 
        
        
</div>
            <!-- Portfolio -->
            
            <!-- End Portfolio -->
            <!-- === END CONTENT === -->
            <!-- === BEGIN FOOTER === -->
            
            <!-- Footer -->
            <div id="footer" class="background-grey">
                <div class="container">
                    <div class="row">
                        <!-- Footer Menu -->
                        <div id="footermenu" class="col-md-8">
                            <ul class="list-unstyled list-inline">
                                <li>
                                    <a href="#" target="_blank"></a>
                                </li>
                                <li>
                                    <a href="#" target="_blank"></a>
                                </li>
                                <li>
                                    <a href="#" target="_blank"></a>
                                </li>
                                <li>
                                    <a href="#" target="_blank"></a>
                                </li>
                            </ul>
                        </div>
                        <!-- End Footer Menu -->
                        <!-- Copyright -->
                        <div id="copyright" class="col-md-4">
                            
                        </div>
                        <!-- End Copyright -->
                    </div>
                </div>
            </div>
            <!-- End Footer -->
            <!-- JS -->
            <script type="text/javascript" src="assets/js/jquery.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="assets/js/bootstrap.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="assets/js/scripts.js"></script>
            <!-- Isotope - Portfolio Sorting -->
            <script type="text/javascript" src="assets/js/jquery.isotope.js" type="text/javascript"></script>
            <!-- Mobile Menu - Slicknav -->
            <script type="text/javascript" src="assets/js/jquery.slicknav.js" type="text/javascript"></script>
            <!-- Animate on Scroll-->
            <script type="text/javascript" src="assets/js/jquery.visible.js" charset="utf-8"></script>
            <!-- Sticky Div -->
            <script type="text/javascript" src="assets/js/jquery.sticky.js" charset="utf-8"></script>
            <!-- Slimbox2-->
            <script type="text/javascript" src="assets/js/slimbox2.js" charset="utf-8"></script>
            <!-- Modernizr -->
            <script src="assets/js/modernizr.custom.js" type="text/javascript"></script>
            <!-- End JS -->
    </body>
</html>
<!-- === END FOOTER === -->