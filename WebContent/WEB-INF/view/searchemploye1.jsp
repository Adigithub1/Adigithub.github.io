<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Patient Appointment</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"
	media="screen,projection" />
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script>
function formsubmit() {
		var pwd1 = document.getElementById("pwd1").value;
		var pwd2 = document.getElementById("pwd2").value;
		var message16 = document.getElementById('massage16');
		var name = document.getElementById('Name').value;
		var name = document.getElementById('SurName').value;
		var mno = document.getElementById('MobileNumber').value;
		if (document.form1.name.value == '' || name.length < 4 || document.form1.Surname.value == '' || name.length < 4 || document.form1.MobileNumber.value == '' || mno.length < 10 || document.form1.email.value == '' || Password != RetypePassword) {
			message16.innerHTML = "Fill the required field";
			return false;
		} else {
			return true;
		}
	}
	

	
	
	function allnumeric(inputtxt) {
		var numbers = /^[7-9][0-9]{9}$/g;
		var message = document.getElementById('message');
		if (inputtxt.value.match(numbers)) {
			message.innerHTML = "Enter 10 digit Number ";


			return true;
		} else {
			message.innerHTML = " ";

			return false;
		}
	}
	function isNumber(evt) {
		evt = (evt) ? evt : window.event;
		var charCode = (evt.which) ? evt.which : evt.keyCode;
		if (charCode > 31 && ((charCode < 48) || charCode > 57)) {
			return false;
		}
		return true;
	}
	function allnumeric1(inputtxt) {
		var numbers = /^[0-9]{9}$/g;
		var message = document.getElementById('message4');
		if (inputtxt.value.match(numbers)) {
			message.innerHTML = "";


			return true;
		} else {
			message.innerHTML = "Enter Numbers only ";

			return false;
		}
	}


	function allaplh(inputtxt4) {
		var numbers = /^[A-Za-z]{4,10}$/g;
		var message = document.getElementById('message2');
		if (inputtxt4.value.match(numbers)) {
			message.innerHTML = "";
			return true;
		} else {
			message.innerHTML = "Enter Minimum 4 Characters";
			return false;
		}

	}

	function allaplh1(inputtxt1) {
		var numbers = /^[A-Za-z]{1,2}$/g;
		var message = document.getElementById('message3');
		if (inputtxt1.value.match(numbers)) {
			message.innerHTML = "";
			return true;
		} else {
			message.innerHTML = "Enter Minimum  2 Characters ";
			return false;
		}
	}
</script>
<script>
	function myFunction() {
		var x = document.getElementById("myEmail").pattern;
		document.getElementById("demo").innerHTML = x;
	}
</script>
</head>
<body style="margin-top: 10px">

	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Registration Card</label>
					</div>
					<form action="index4.html">
						<div class="panel-body">
							<div class="row">
								<div class="col-xs-1"></div>
								<div class="col-xs-4" align="right">
									<label style="padding-top: 3%" for="lname">Search By
										Patient MR.No</label>
								</div>
								<div class="col-xs-3">


									<input type="text" class="form-control"
										placeholder=" Search By Patient MR.No" minlength="4"
										maxlength="30" name="searchMrPtnNo">


								</div>
								<div class="col-xs-3">
									<button class="btn btn-info" type="submit" value="A new value">
										<span class="glyphicon glyphicon-search"></span> Search
									</button>
								</div>

							</div>




						</div>
					</form>
					<br> <br>
					<div class="bs-example" style="padding-left: 3%; padding-right: 3%">

						<table class="table table-bordered">
							<thead>
								<tr style="background-color: #337ab7; color: #f9f8f8">
									<th><span class="glyphicon glyphicon-list-alt"></span>
										Token No</th>
									<th><span class="glyphicon glyphicon-user"></span> Patient
										Name</th>
									<th><span class="glyphicon glyphicon-calendar"></span>
										MR.No</th>
									<th><span class="glyphicon glyphicon-user"></span> Doctor
										Name</th>
									<th><span class="glyphicon glyphicon-print"></span> Print</th>
								</tr>
							</thead>
							<c:if test="${empty abc}">
								<div align="center">
									<h4 style="color: red">"SORRY NO DATA FOUND!"</h4>
								</div>
							</c:if>
							<c:forEach items="${abc}" var="abc">
								<tbody>
								<tr>
									<td><c:out value="${abc.id}" /></td>
									<td><c:out value="${abc.patientName}" /></td>
									<td><c:out value="${abc.registNo}" /></td>
									<td><c:out value="${abc.doctorName}" /></td>
									<form:form action="patientReport.html?registNo=${abc.registNo}"
										modelAttribute="user">
										<td align=center><button class="btn btn-info">
												<span class="glyphicon glyphicon-print"></span>
											</button></td>
									</form:form>
									</tr>
								</tbody>
							</c:forEach>

						</table>


					</div>

				</div>

			</div>

		</div>
	</div>

</body>
</html>