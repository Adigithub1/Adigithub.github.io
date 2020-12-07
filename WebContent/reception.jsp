<%@page import="com.sun.mail.iap.Response"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.mySlides {
	display: none;
}
</style>

<style>
a {
	color: white;
}

body {
	margin: 0;
}

.menus li:hover {
	background-color: #0000cf;
}

.icon-bar {
	width: 100%;
	background-color: white !important;
	overflow: auto;
}

.me {
	width: 80%;
	font-size: 22px;
}

.navbar a {
	float: left;
	width: 9%;
	text-align: center;
	padding: 12px 0;
	transition: all 0.3s ease;
	color: white;
	font-size: 22px;
}

.icon-bar a:hover {
	background-color: #061d6d;
	color: white;
}
</style>
<!-- Meta, title, CSS, favicons, etc. -->

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />










<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="https://www.amcharts.com/lib/3/plugins/tools/polarScatter/polarScatter.min.js"></script>

<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" href="css/w3.css">


<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>
<script src="amcharts/plugins/export/export.min.js"></script>
<script src="amcharts/plugins/export/export.js"></script>
<link rel="stylesheet" href="amcharts/plugins/export/export.css"
	type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/none.js"></script>









<style>
.chart-revenue {
	display: none !important;
}
</style>
<script>
	$(function() {
		$('.panel').hover(function() {
			$(this).find('.panel-footer').slideDown(250);
		}, function() {
			$(this).find('.panel-footer').slideUp(250); //.fadeOut(205)
		});
	})
</script>
<script
	src="https://www.amcharts.com/lib/3/plugins/tools/polarScatter/polarScatter.min.js"></script>

<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">




<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>
<script
	src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/none.js"></script>


<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/funnel.js"></script>
<script
	src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/none.js"></script>

<script src="amcharts/plugins/export/export.min.js"></script>
<script src="amcharts/plugins/export/export.js"></script>
<link rel="stylesheet" href="amcharts/plugins/export/export.css"
	type="text/css" media="all" />




<link type="text/css" rel="stylesheet" href="index2.css"
	media="screen,projection" />
<script type="text/javascript" src="index2.js"></script>
   <script type="text/javascript" src="js/Fullscreen.js"></script>




<link type="text/css" rel="stylesheet" href="index3.css"
	media="screen,projection" />
<script type="text/javascript" src="index3.js"></script>






<link type="text/css" rel="stylesheet" href="index1.css"
	media="screen,projection" />
<script type="text/javascript" src="index1.js"></script>


<style>
.chart-revenue {
	display: none !important;
}
</style>




<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="https://www.amcharts.com/lib/3/plugins/tools/polarScatter/polarScatter.min.js"></script>
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>
<script
	src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/none.js"></script>
<link type="text/css" rel="stylesheet" href="index4.css"
	media="screen,projection" />
<script type="text/javascript" src="index4.js"></script>
<style>
.chart-revenue {
	display: none !important;
}
</style>



<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/radar.js"></script>
<script
	src="https://www.amcharts.com/lib/3/plugins/tools/polarScatter/polarScatter.min.js"></script>
<script
	src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/none.js"></script>
<link type="text/css" rel="stylesheet" href="index5.css"
	media="screen,projection" />
<script type="text/javascript" src="index5.js"></script>
<style>
.chart-revenue {
	display: none !important;
}
</style>















<title>Sri Lakshmi Hospital</title>

<!-- Bootstrap -->
<link href="vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- iCheck -->
<link href="vendors/iCheck/skins/flat/green.css" rel="stylesheet">

<!-- bootstrap-progressbar -->
<link
	href="vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet">
<!-- JQVMap -->
<link href="vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet" />
<!-- bootstrap-daterangepicker -->
<link href="vendors/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">
<link type="text/css" rel="stylesheet" href="css/Footer.css"
	media="screen,projection" />

<!-- Custom Theme Style -->
<link href=" build/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
	<div id="logo" style="background-color: white; margin-bottom: 6px;">

		<img style="margin-bottom: 0px;"
			src="images1/Icon1/lakshmihospital_header_small.png">

	</div>
	<div class="navbar-header" style="background-color: #e65008;">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"
				style="color: white"></span> <span class="icon-bar"
				style="color: white"></span> <span class="icon-bar"
				style="color: white"></span>
		</button>
		<a class="navbar-brand" href="#"></a>
	</div>

	<center>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			style="background-color: #e65008; color: white; width: 100%;"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav" class="menus"
				style="float: left; text-align: center; margin-left: 12%; color: white; font-size: 22px;">
				<li class="menus"><a class="active"
					style="color: white !important; padding: 12px 55px 0px 55px;"
					href="index.jsp" data-toggle="tooltip" title="Home"><i
						class="fa fa-home"></i></a></li>
				<li class="menus"><a href="reception.jsp"
					style="color: white !important; padding: 12px 55px 0px 55px;"
					data-toggle="tooltip" title="Reception"><i
						class="fa fa-hospital-o"></i></a></li>
				<li class="menus"><a href="Doctor.jsp"
					style="color: white !important; padding: 12px 55px 0px 55px;"
					data-toggle="tooltip" title="Doctor"><i class="fa fa-user-md"></i></a>
				</li>
				<li class="menus"><a href="ward.jsp"
					style="color: white !important; padding: 12px 55px 0px 55px;"
					data-toggle="tooltip" title="Ward"><i class="fa fa-bed"></i></a></li>


				<li class="menus"><a href="pharmacy.jsp"
					style="color: white !important; padding: 12px 55px 0px 55px;"
					data-toggle="tooltip" title="Pharmacy"><i class="fa fa-medkit"></i></a>
				</li>

				
				<li class="menus"><a href="store.jsp"
					style="color: white !important; padding: 12px 55px 0px 55px;"
					data-toggle="tooltip" title="Store"><i
						class="fa fa-shopping-cart"></i></a></li>
				<li class="menus"><a href="setting.jsp"
					style="color: white !important; padding: 12px 55px 0px 55px;"
					data-toggle="tooltip" title="Setting"><i class="fa fa-gear"></i></a>
				</li>

			</ul>


		</div>
		<!-- /.navbar-collapse -->
	</center>

	<div class="row">
		<a></a>
	</div>
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view"
					style="box-shadow: inset 0px 0px 20px 0px #3c464c; background-color: white; width: 100%;">




					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu" style="margin-top: -20px"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">

							<ul class="nav side-menu">
								
										<li class="active"><a  href="bca.html" target="search_iframe">Patient Appointment</a></li>
										<li><a href="add.html" target="search_iframe">Add New Patient</a></li>
										<li><a href="mlc.html" target="search_iframe">Add New MLC Patient</a></li>
										<li><a href="index3.html" target="search_iframe">Registration Card</a></li>
										<li><a href="inpatient.html" target="search_iframe">In-Patient Enquire</a></li>
										<li><a href="outpatient111.html" target="search_iframe">Out-Patient Enquire</a></li>
										<li><a href="inpatientAddmissionDetails.html" target="search_iframe">In-Patient Admission</a></li>
									</ul>
							
						</div>

					</div>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					 <div class="sidebar-footer hidden-small">
          
    <a input type="button" data-toggle="tooltip" class="glyphicon glyphicon-cog" title="Settings" aria-hidden="true"  data-placement="top" data-delay="25" href="userListHospital.html" target="search_iframe" ></a>
    <a input type="button" data-toggle="tooltip" class="glyphicon glyphicon-fullscreen" title="Fullscreen" aria-hidden="true"  data-placement="top" data-delay="25"  value="click to toggle fullscreen" onclick="toggleFullScreen()"></a>
    <a href="lockscreen.jsp" input type="button" data-toggle="tooltip" class="glyphicon glyphicon-lock" title="Lock" aria-hidden="true"  data-placement="top" data-delay="25" ></a>
    <a href="Login.jsp" input type="button" data-toggle="tooltip" class="glyphicon glyphicon-off" title="Logout" aria-hidden="true"  data-placement="top" data-delay="25" ></a>
    
            </div>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav" style="background-color: white !important">
				<div class="nav_menu" style="background-color: white">
					<nav>
					<div class="nav toggle">
						<a id="menu_toggle"><i class="fa fa-bars"></i></a>
					</div>

					<ul class="nav navbar-nav navbar-right">
					


					</ul>
					</nav>
				</div>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main"  width="100%" height="auto">
			<iframe style="padding-top:10px" src="bca.html" frameborder="0"  scrolling="no" onload="resizeIframe(this)"  width="100%" height="500px" name="search_iframe"><img src="images1/136276e7e3289cab6fa21190f3b8b0d4 - Copy.png"/></iframe>
			</div>

		</div>
		<link
			href="https://fortawesome.github.io/Font-Awesome/assets/font-awesome/css/font-awesome.css"
			rel="stylesheet">
		<!--footer start from here-->
		<footer style="    background-color: #e65008;">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-6 footerleft " style="left: 2%;">
					<div class="logofooter">
						<img src="images/symbol---copy.png">
						<h3>Sri Lakshmi</h3>
						<h4>Multi Speciality Hospital</h4>
					</div>
					<p>
						<i class="glyphicon glyphicon-map-marker"></i> 210, Aggarwal
						Tower, Rohini sec 9, New Delhi -        110085, INDIA
					</p>
					<p>
						<i class="glyphicon glyphicon-earphone"></i> Phone (India) : +91
						9999 878 398
					</p>
					<p>
						<i class="glyphicon glyphicon-phone-alt"></i> Phone (India) : +91
						9999 878 398
					</p>
					<p>
						<i class="glyphicon glyphicon-envelope"></i> E-mail :
						info@webenlance.com
					</p>

				</div>


				<div class="col-md-4 col-sm-6 paddingtop-bottom">
					<div class="fb-page"
						data-href="http://www.signalsearchsoftware.com/"
						data-tabs="timeline" data-height="300" data-small-header="false"
						style="margin-bottom: 15px;" data-adapt-container-width="true"
						data-hide-cover="false" data-show-facepile="true">
						<div class="fb-xfbml-parse-ignore">
							<blockquote style="border-right: 5px solid #eee;"
								class="glyphicon glyphicon-globe">
								<a href="http://www.signalsearchsoftware.com/">
									www.srilakshmihospital.in</a>
							</blockquote>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 paddingtop-bottom" style="left: 0%;">
					<div class="fb-xfbml-parse-ignore">
						<h2 class="w3-center">
							<i class="fa fa-user-md"></i></a></span> Meet Our Doctors
						</h2>

						<div class="w3-content" style="max-width: 400px">
							<div class="mySlides w3-container w3-red">
								<center>
									<h1 style="font-size: 20px;">
										<b>Dr. Anand Shenoy </b>
									</h1>
								</center>
								<center>
									<h2>
										<i>Cardiology</i>
									</h2>
								</center>
							</div>

							<div class="w3-content" style="max-width: 400px">
								<div class="mySlides w3-container w3-red">
									<center>
										<h1 style="font-size: 20px;">
											<b>Dr. Lokesh Kumar K S </b>
										</h1>
									</center>
									<center>
										<h2>
											<i>Anaesthesiology</i>
										</h2>
									</center>
								</div>

								<div class="w3-content" style="max-width: 400px">
									<div class="mySlides w3-container w3-red">
										<center>
											<h1 style="font-size: 20px;">
												<b>Dr. Yuvraj Manohar </b>
											</h1>
										</center>
										<center>
											<h2>
												<i>Radiodiagnosis </i>
											</h2>
										</center>
									</div>
									<div class="w3-content" style="max-width: 400px">
										<div class="mySlides w3-container w3-red">
											<center>
												<h1 style="font-size: 20px;">
													<b>Dr. Aditya Chowti </b>
												</h1>
											</center>
											<center>
												<h2>
													<i>Internal Medicine, Diabetology</i>
												</h2>
											</center>
										</div>
										<div class="w3-content" style="max-width: 400px">
											<div class="mySlides w3-container w3-red">
												<center>
													<h1 style="font-size: 20px;">
														<b>Dr. Gokulakrishnan P J </b>
													</h1>
												</center>
												<center>
													<h2>
														<i>Urology & Andrology </i>
													</h2>
												</center>
											</div>
											<div class="w3-content" style="max-width: 400px">
												<div class="mySlides w3-container w3-red">
													<center>
														<h1 style="font-size: 20px;">
															<b>Dr. Tameem Ahmed </b>
														</h1>
													</center>
													<center>
														<h2>
															<i>Cardio Thoracic Vascular Surgery</i>
														</h2>
													</center>
												</div>
												<script>
													var slideIndex = 0;
													carousel();

													function carousel() {
														var i;
														var x = document
																.getElementsByClassName("mySlides");
														for (i = 0; i < x.length; i++) {
															x[i].style.display = "none";
														}
														slideIndex++;
														if (slideIndex > x.length) {
															slideIndex = 1
														}
														x[slideIndex - 1].style.display = "block";
														setTimeout(carousel,
																2000);
													}
												</script>

											</div>
										</div>
		</footer>
		<!--footer start from here-->

		<div class="copyright">
			<div class="container">
				<div class="col-md-6">
					<p>© 2016 - All Rights with Signal Search</p>
				</div>
				<div class="col-md-6">
					<ul class="bottom_ul">
						<p>
							Powerd By:<a href="http://www.signalsearchsoftware.com/">Signal
								Search software india private limited 
						</p>


					</ul>
				</div>
			</div>
		</div>
		</footer>
		<!-- /footer content -->
	</div>
	</div>

	<!-- jQuery -->
	<script src="vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="vendors/nprogress/nprogress.js"></script>
	<!-- Chart.js -->
	<script src="vendors/Chart.js/dist/Chart.min.js"></script>
	<!-- gauge.js -->
	<script src="vendors/gauge.js/dist/gauge.min.js"></script>
	<!-- bootstrap-progressbar -->
	<script
		src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<!-- iCheck -->
	<script src="vendors/iCheck/icheck.min.js"></script>
	<!-- Skycons -->
	<script src="vendors/skycons/skycons.js"></script>
	<!-- Flot -->
	<script src="vendors/Flot/jquery.flot.js"></script>
	<script src="vendors/Flot/jquery.flot.pie.js"></script>
	<script src="vendors/Flot/jquery.flot.time.js"></script>
	<script src="vendors/Flot/jquery.flot.stack.js"></script>
	<script src="vendors/Flot/jquery.flot.resize.js"></script>
	<!-- Flot plugins -->
	<script src="vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
	<script src="vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
	<script src="vendors/flot.curvedlines/curvedLines.js"></script>
	<!-- DateJS -->
	<script src="vendors/DateJS/build/date.js"></script>
	<!-- JQVMap -->
	<script src="vendors/jqvmap/dist/jquery.vmap.js"></script>
	<script src="vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
	<script src="vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
	<!-- bootstrap-daterangepicker -->
	<script src="vendors/moment/min/moment.min.js"></script>
	<script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- Custom Theme Scripts -->
	<script src="build/js/custom.min.js"></script>
<script type="text/javascript"
																	src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
																<script type="text/javascript" src="js/materialize.js"></script>
																<script type="text/javascript" async=""
																	src="http://127.0.0.1:51143/codelive-assets/bundle.js"></script>
																	
				<script type="text/javascript"
					src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
				<script type="text/javascript" src="js/materialize.js"></script>
				<script type="text/javascript" async=""
					src="http://127.0.0.1:51143/codelive-assets/bundle.js"></script>

				</div>

</body>
</html>

