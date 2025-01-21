<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>

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
    
    <script>alert('Your Previuos Question was Saved Success');</script>
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
                                        <a href="pharmacisthome.jsp" class="fa-home ">Home</a>
                                    </li>
                                    <li>
                                        <a href="Gopal_QQ.jsp" class="fa-comment active">Questionnaire</a>
                                       
                                    </li>
                                    <li>
                                        <a href="viewques.jsp" class="fa-comment ">View</a>
                                    </li>                                    
                                    
                                    
                                     <li>
                                        <a href="logout.jsp" class="fa-comment ">Logout</a>
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
 
<script type='text/javascript'>
    function playVideo(a)
    {
        a = document.getElementById(a.value);
        b = document.getElementById("videoPlayback");
        b.innerHTML = a.innerHTML;
    }
</script>

<center>
    <h1><font color="black">Add Question</font></h1><br>
    
  <strong><font size="3" color="black">Type</font></strong>
        <select name="feetype" onChange="playVideo(this)">
    
    <option value="feetype" selected="" > Select:</option>
    <option value="Description" >Description</option>
    <option value="Objective">Objective</option>
                                          
            </select>  
  <br><r>
   <div id='Description' style='display:none'>  
    
 <%
                
ResultSet rs=null;
 try{
       
        
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        rs=st.executeQuery("select * from patient");
}catch(Exception e){
    e.printStackTrace();
    }
%>
            
<br>
                    
                    
                     <form name="myform" action="descriptionact.jsp" method="post"  >
   
                         <center>        
       
       <strong><font size="3" color="black">Select Patient</font></strong>
      
            <select name="patid" required>
                <option value="">Select</option>
                <%
                while(rs.next()){
                %>
                <option value="<%=rs.getString("patid")%>"><%=rs.getString("patid")%></option>
               

                <%}%>
            </select>
            <br><br>

<%
                
ResultSet rs1=null;
 try{
       
        
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        rs1=st.executeQuery("select * from doctor");
}catch(Exception e){
    e.printStackTrace();
    }
%>
            
            
      <strong><font size="3" color="black">Select Doctor</font></strong>

            <select name="docid" required>
                <option value="">Select</option>
                <%
                while(rs1.next()){
                %>
               
                <option value="<%=rs1.getString("docid")%>"><%=rs1.getString("docid")%></option>
                

                <%}%>
            </select>
     

    <br>
    <br>
     <strong>   <font color="black"> Question :</td><td><input type="text" name="q1" required="" /></strong><br><br>
     
     

    </form>
                  
    <div align="right">
    </div>  
          <br><br>      
          <td><input type="submit" value="Add Question" style="height:30px; width:100px" />
          <td><input type="submit" value="Schedule" style="height:30px; width:70px" />
        <input type="reset" value="Reset" style="height:30px; width:50px" /></td>
    </div>
                </center>                   
  </form>     
         


    <div id='Objective' style='display:none'>
     <%
                
ResultSet rs3=null;
 try{
       
        
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        rs3=st.executeQuery("select * from patient");
}catch(Exception e){
    e.printStackTrace();
    }
%>
 
  <br>


 <center>           
 <form name="myform" action="objectiveact.jsp" method="post"  >
 <strong><font size="3" color="black">Select Patient</font></strong>
 <select name="patid" required>
 <option value="">Select</option>
 <%
    while(rs3.next()){
 %>
 <option value="<%=rs3.getString("patid")%>"><%=rs3.getString("patid")%></option>
 <%}%>
 </select>
 <br><br>

 <%
                
 ResultSet rs4=null;
 try{
       
        
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        rs4=st.executeQuery("select * from doctor");
}catch(Exception e){
    e.printStackTrace();
    }
%>
            
          
      <strong><font size="3" color="black">Select Doctor</font></strong>
      <select name="docid" required>
      <option value="">Select</option>
                <%
                while(rs4.next()){
                %>
      <option value="<%=rs4.getString("docid")%>"><%=rs4.getString("docid")%></option>
                <%}%>
      </select>
       <br><br>
   
    
     <strong><font color="black"> Question :</td><td><input type="text" name="question" required="" /></strong><br><br>
     <strong><font color="black">Option1 :</td><td><input type="text" name="option1" required="" /></strong><br><br> 
     <strong><font color="black">Option2 :</td><td><input type="text" name="option2" required="" /></strong><br><br>   
        
        
          <td><input type="submit" value="Add Question" style="height:30px; width:100px" />
        <td><input type="submit" value="Schedule" style="height:30px; width:70px" />
        <input type="reset" value="Reset" style="height:30px; width:50px" /></td>
        </div>
        </center>                  
        </form>   
        
        </div>
                          
        <div id='videoPlayback'>    
        </div>
        <br><br>

        </div>
        </div>
            
            
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