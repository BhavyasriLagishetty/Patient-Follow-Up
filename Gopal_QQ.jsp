<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true"%>
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
<style>
table {
	width: 70%;
	font: 17px Calibri;
}

table, th, td {
	border: solid 1px #DDD;
	border-collapse: collapse;
	padding: 2px 3px;
	text-align: center;
}
</style>
</head>
<%
	if (request.getParameter("m1") != null) {
%>
<script>
	alert('Questionnaire added');
</script>
<%
	}
	if (request.getParameter("m2") != null) {
%>
<script>
	alert(' Failed');
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
								<li><a href="pharmacisthome.jsp" class="fa-home">Home</a></li>
								<li><a href="pharmaViewPatients.jsp" class="fa-comment">View
										Patients</a></li>

								<li><a href="Gopal_QQ.jsp" class="fa-comment active">Questionnaire</a>

								</li>
								<li><a href="viewques.jsp" class="fa-comment ">View</a></li>

								<li><a href="logout.jsp" class="fa-comment ">Logout</a></li>
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
		<center>
			<body onload="createTable()">
				<h1>
					<font color="black">Add Questionnaire</font>
				</h1>
				<form id="form1" action="orderAction.html" method="POST">
					<table align="center">
						<%-- <tr>
							<th>Customer id</th>
							<th>:</th>
							<td><select name="custId" id="custId" required="">
									<option value="">--Customer Id--</option>
									<c:forEach items="${custList}" var="custId">
										<option value="${custId}">${custId}</option>
									</c:forEach>
							</select></td>
						</tr> --%>
						<tr>
							<%
								ResultSet rs2 = null;
								try {

									Connection con = Dbconnection.getConnection();
									Statement st = con.createStatement();
									rs2 = st.executeQuery("select * from patient");
								} catch (Exception e) {
									e.printStackTrace();
								}
							%>

							<td>Select Patient</td>
							<td>:</td>
							<td><select id="patid" name="patid" required>
									<option value="">Select</option>
									<%
										while (rs2.next()) {
									%>

									<option value="<%=rs2.getString("patid")%>"><%=rs2.getString("patid")%></option>


									<%
										}
									%>
							</td>
							</select>
						</tr>
						<tr>
							<%
								ResultSet rs3 = null;
								try {

									Connection con = Dbconnection.getConnection();
									Statement st = con.createStatement();
									rs3 = st.executeQuery("select * from doctor");
								} catch (Exception e) {
									e.printStackTrace();
								}
							%>

							<td>Select Doctor</td>
							<td>:</td>
							<td><select id="docid" name="docid" required>
									<option value="">Select</option>
									<%
										while (rs3.next()) {
									%>

									<option value="<%=rs3.getString("docid")%>"><%=rs3.getString("docid")%></option>


									<%
										}
									%>
							</td>
							</select>
						</tr>
						<tr>
							<th><b>Medication Duration</b></th>
							<td>:</td>
							<td><input type="text"
								placeholder="Enter Medication Duration" id="medicationDuration"
								name="medicationDuration" required></td>
						</tr>
					</table>
				</form>
				<input type="button" id="addObjRow" value="Add New Objective Row"
					onclick="addRow('Objective')" />
				<input type="button" id="addDesRow" value="Add New Descriptive Row"
					onclick="addRow('Descriptive')" />
				<p></p>

				<div id="cont"></div>
				<p>
					<!-- <input type="button" id="addRow" value="Add New Row For Medicine"
						onclick="addRow()" /> -->
				</p>
				<p>
					<!-- <input type="button" onclick="submitForm('orderAction.html')"
				value="Place Order" /> -->
					<input type="button" onclick="return submitForm('viewOrder.jsp')"
						value="Submit" />
				</p>
			</body>
		</center>
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
<script type="text/javascript">
	var medicineList = new Array();
	//var mediList = '${medicinceList}';
	//mediList=["helo","hi","123"];
	//mediList = mediList.substring(1, mediList.length - 1)
	//medicineList = mediList.split(",");
	medicineList = [ "Descriptive", "Objective" ];
	var values = new Array();
	var rowCounting = 0;
	var arrHead = new Array();
	arrHead = [ '', 'Question Type. ', 'Question', 'Present Input', 'Option 1',
			'Option 2' ];
	function createTable() {
		var medicineTable = document.createElement('table');
		medicineTable.setAttribute('id', 'medicineTable');
		var tr = medicineTable.insertRow(-1);
		for (var h = 0; h < arrHead.length; h++) {
			var th = document.createElement('th');
			th.innerHTML = arrHead[h];
			tr.appendChild(th);
		}
		var div = document.getElementById('cont');
		div.appendChild(medicineTable);
		//addRow();
	}

	function addRow(type) {
		var medicineTab = document.getElementById('medicineTable');
		var rowCnt = medicineTab.rows.length;
		var tr = medicineTab.insertRow(rowCnt);
		tr = medicineTab.insertRow(rowCnt);
		var columns = arrHead.length;
		if (type == 'Descriptive') {
			columns = 4;
		}
		for (var c = 0; c < columns; c++) {
			var td = document.createElement('td');
			td = tr.insertCell(c);

			if (c == 0) {
				var button = document.createElement('input');

				button.setAttribute('type', 'button');
				button.setAttribute('value', 'Remove');

				button.setAttribute('onclick', 'removeRow(this)');

				td.appendChild(button);
			} else if (c == 1) {
				var ele = document.createElement('input');
				ele.setAttribute('type', 'text');
				ele.setAttribute('value', type);
				ele.setAttribute('readonly', 'true');
				td.appendChild(ele);
			} else {
				var ele = document.createElement('input');
				if (c == 2) {
					ele.setAttribute('placeholder', 'Enter Question Here');
				} else if (c == 3) {
					ele.setAttribute('placeholder', 'Present Input');
				} else if (c == 4) {
					ele.setAttribute('placeholder', 'Enter Option 1');
				} else {
					ele.setAttribute('placeholder', 'Enter Option 2');
				}
				ele.setAttribute('type', 'text');
				ele.setAttribute('value', '');
				td.appendChild(ele);
			}
		}
		rowCounting++;
	}

	function removeRow(oButton) {
		var medicineTab = document.getElementById('medicineTable');
		if (rowCounting > 1) {
			rowCounting--;
			medicineTab.deleteRow(oButton.parentNode.parentNode.rowIndex);
		} else {
			alert("You can not remove all rows you need to fill atleast single row details"
					+ rowCounting);
		}
	}

	function submit() {
		var myTab = document.getElementById('medicineTable');
		values = new Array();
		for (row = 1; row < myTab.rows.length - 1; row++) {
			var count = 0;
			for (c = 0; c < myTab.rows[row].cells.length; c++) {
				var element = myTab.rows.item(row).cells[c];
				if (element.childNodes[0].getAttribute('type') == 'text'
						|| element.childNodes[0].getAttribute('type') == 'select') {
					count++;
					if (!element.childNodes[0].value == "") {
						values.push(element.childNodes[0].value);
					} else {
						if (count == 1) {
							alert("Please Select Medicine Id in row number")
						} else if (count == 2) {
							alert("Please Eneter Question row number " + row)
						} else if (count == 3) {
							alert("Please Eneter Enter Option 1 row number "
									+ row)
						} else {
							alert("Please Eneter Enter Option 2 row number "
									+ row)
						}
						return false;
					}
				}
			}
			values.push(":");
		}
		if (row == 1) {
			alert("no questions are entered");
			return false;
		}
		console.log(values);
		return true;
	}
	function submitForm(action) {
		var docId = document.getElementById("docid").value;
		var patId = document.getElementById("patid").value;
		var medicationDuration = document.getElementById("medicationDuration").value;
		if (docId == "") {
			alert("Doctor Id field is empty kindly Select Doctor Id")
			return false;
		}
		if (patId == "") {
			alert("Patient Id field is empty kindly Select Patient Id")
			return false;
		}
		if (medicationDuration == "") {
			alert("Medication Duration field is empty kindly enter Medication Duaration")
			return false;
		}
		if (!submit()) {
			return false;
		}
		alert(action + "?values=" + values);
		alert("Your submiting form")

		var form = document.getElementById('form1');
		form.action = action + "?values=" + values + "&docId=" + docId
				+ "&patId=" + patId + "&medicationDuration="
				+ medicationDuration;
		form.submit();
	}
</script>
</html>