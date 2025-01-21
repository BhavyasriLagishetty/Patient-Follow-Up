<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true"%>
<%@page import="java.io.File"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<!-- Favicon -->
<link href="favicon.ico" rel="shortcut icon">
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="assets/css/bootstrap.css" rel="stylesheet">
<!-- Template CSS -->
<link rel="stylesheet" href="assets/css/animate.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/font-awesome.css"
	rel="stylesheet">
<link rel="stylesheet" href="assets/css/nexus.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/responsive.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/custom.css" rel="stylesheet">
<!-- Google Fonts-->
<link
	href="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300"
	rel="stylesheet" type="text/css">
</head>
<%
if (request.getParameter("m1") != null) {
%>
<script>
	alert('Registration success');
</script>
<%
}
if (request.getParameter("m2") != null) {
%>
<script>
	alert('Login Failed');
</script>

<%
}
%>
<body>
	<div id="body-bg">
		<!-- Phone/Email -->
		<div id="pre-header" class="background-gray-lighter">
			<div class="container no-padding">
				<div class="row hidden-xs">
					<div class="col-sm-6 padding-vert-5"></div>
					<div class="col-sm-6 text-right padding-vert-5"></div>
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
						<a href="index.html" title=""> <img src="assets/img/logo.png"
							alt="Logo" />
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
								<li><a href="patienthome.jsp" class="fa-home ">Home</a></li>

								<li><a href="uviewques.jsp" class="fa-user active">View
										Solution</a></li>



								<li><a href="logout.jsp" class="fa-male ">Logout</a></li>
							</ul>
						</div>
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
					<div id="carousel-example" class="carousel slide"
						data-ride="carousel">
						<!-- Carousel Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#carousel-example" data-slide-to="0"
								class="active"></li>
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
						<a class="left carousel-control" href="#carousel-example"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span>
						</a> <a class="right carousel-control" href="#carousel-example"
							data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span>
						</a>
						<!-- End Carousel Controls -->
					</div>
					<!-- End Carousel Slideshow -->
				</div>
			</div>
		</div>

		<div id="content" class="bottom-border-shadow">
			<div class="container background-white bottom-border">
				<center>
					<br>
					<h1>
						<font color="black"> Solution</font>
					</h1>
					<br>

					<%
					String patid = session.getAttribute("patid").toString();
					List<String> list=new ArrayList<>();
					Connection con = Dbconnection.getConnection();
					Statement st = con.createStatement();
					String sql = "SELECT distinct filename FROM cal1 where pid='" + patid + "'";
					System.out.println("sql - " + sql);
					ResultSet rs = st.executeQuery(sql);
					while (rs.next()) {
						String filenames = rs.getString("filename");
						if (null != filenames) {
							System.out.println("filenames - " + filenames);
							String fileNameArray[] = filenames.split(",");
							for (String filename : fileNameArray) {
								if(list.contains(filename)){
									continue;
								}
								list.add(filename);
						System.out.println("filename - " + filename);
					%>



					<p>
						<image src="images/<%=filename%>" width="200" height="200" />
					</p>
					<%
					}
					}
					}

					PreparedStatement pst = con.prepareStatement("select * from solution where patientid = '" + patid + "'");

					rs = pst.executeQuery();
					%>



					<table width="60%" border="2">
						<tr style="color: #33747a">
							<th>Patientid</th>
							<th>Doctorid</th>
							<th>Solution</th>



						</tr>
						<%
						while (rs.next()) {
						%>

						<tr style="color: black">
							<th><%=rs.getString("patientid")%></th>
							<th><%=rs.getString("doctorid")%></th>
							<th><%=rs.getString("solution")%></th>




						</tr>
						<%}%>

					</table>
				</center>
				<br> <br>
			</div>
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
						<li><a href="#" target="_blank"></a></li>
						<li><a href="#" target="_blank"></a></li>
						<li><a href="#" target="_blank"></a></li>
						<li><a href="#" target="_blank"></a></li>
					</ul>
				</div>
				<!-- End Footer Menu -->
				<!-- Copyright -->
				<div id="copyright" class="col-md-4"></div>
				<!-- End Copyright -->
			</div>
		</div>
	</div>
	<!-- End Footer -->
	<!-- JS -->
	<script type="text/javascript" src="assets/js/jquery.min.js"
		type="text/javascript"></script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script type="text/javascript" src="assets/js/scripts.js"></script>
	<!-- Isotope - Portfolio Sorting -->
	<script type="text/javascript" src="assets/js/jquery.isotope.js"
		type="text/javascript"></script>
	<!-- Mobile Menu - Slicknav -->
	<script type="text/javascript" src="assets/js/jquery.slicknav.js"
		type="text/javascript"></script>
	<!-- Animate on Scroll-->
	<script type="text/javascript" src="assets/js/jquery.visible.js"
		charset="utf-8"></script>
	<!-- Sticky Div -->
	<script type="text/javascript" src="assets/js/jquery.sticky.js"
		charset="utf-8"></script>
	<!-- Slimbox2-->
	<script type="text/javascript" src="assets/js/slimbox2.js"
		charset="utf-8"></script>
	<!-- Modernizr -->
	<script src="assets/js/modernizr.custom.js" type="text/javascript"></script>
	<!-- End JS -->
</body>
</html>
<!-- === END FOOTER === -->