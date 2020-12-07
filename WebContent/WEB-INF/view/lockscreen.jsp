<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>

<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/pagecenter.css"
	media="screen,projection" />
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">


<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script>
      function idnumber(txt, e) {
		var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz./0123456789- ";
		var code;
		if (window.event)
			code = e.keyCode;
		else
			code = e.which;
		var char = keychar = String.fromCharCode(code);
		if (arr.indexOf(char) == -1)
			return false;

	}
   
      </script>
<script type="text/javascript">
      function validate()
      {
    	  var username = document.getElementByName('username');
    	  var password = document.getElementByName('password');
    	  if(username.value=="" || password.value=="")
    		  {
    		  alert("no");
    		  }
      }
      </script>
</head>
<body class="cyan loaded">
	<!-- Start Page Loading -->
	<div id="loader-wrapper">
		<div id="loader"></div>
		<div class="loader-section section-left"></div>
		<div class="loader-section section-right"></div>
	</div>
	<!-- End Page Loading -->


	<center>
		<h4>${msg[0]}</h4>
	</center>
	<div id="login-page" class="row">
		<div class="col s12 z-depth-4 card-panel">
			<form:form class="login-form" method="post" modelAttribute="register"
				action="lockScreenApplicationinapplicationSecond.html?username=${userName[0]}">

				<div class="row">
					<div class="input-field col s12 center">
						<img src="images1/Untitled-1.png" alt=""
							class="circle responsive-img valign profile-image-login">

					</div>
				</div>







				<div class="row margin">
					<form class="col s12">
						<div class="row">
							<div class="input-field col s12">
								<i class="material-icons prefix">lock_outline</i>
								<form:password placeholder="Password" id="icon_prefix"
									path="password" maxlength="20" minlength="6"
									onkeypress="return idnumber(this, event)" required="required"
									autocomplete="OFF" />
								<label for="icon_prefix">Password</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s12">
								<input type="submit"
									style="padding-left: 0px; padding-right: 0px"
									class="btn waves-effect waves-light col s12 " value="LOGIN">
							</div>
						</div>
						<div class="row">
							<div class="input-field col s6 m6 l6">
								<p class="margin medium-small">
									<a href="registerRegister.html">Register Now!</a>
								</p>
							</div>
							<div class="input-field col s6 m6 l6">
								<p class="margin right-align medium-small">
									<a href="page-forgot-password.html">Forgot password ?</a>
								</p>
							</div>
						</div>
			</form:form>
		</div>
	</div>


	<script type="text/javascript"
		src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/materialize.js"></script>
	<script type="text/javascript" src="js/pagecenter.js"></script>
	<script type="text/javascript" async=""
		src="http://127.0.0.1:51143/codelive-assets/bundle.js"></script>
</body>
</html>










