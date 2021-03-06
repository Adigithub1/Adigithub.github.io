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
<title>Patient Appointment]</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"
	media="screen,projection" />
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>



<script type="text/javascript">
        function numberOnly(txt, e) {
            var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz .";
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
        function numberOnly1(txt, e) {
            var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-";
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
	function formsubmit() {
		var Dname = document.getElementById('Doctor_Name').value;
		var Pname = document.getElementById('Patient_Name').value;
		var mno = document.getElementById('Mobile_Number').value;
		if (document.form1.Doctor_Name.value == '' || Dname.length < 4
				|| document.form1.Patient_Name.value == '' || Pname.length < 4
				|| document.form1.Mobile_Number.value == '' || mno.length < 10
			) {
			message16.innerHTML = "Fill the required field";
			return false;
		} else {
			return true;
		}
	}
	function onlyAlphabets(e) {
		if (window.event) {
			var charCode = window.event.keyCode;
		} else if (e) {
			var charCode = e.which;
		} else {
			return true;
		}
		if ((charCode > 64 && charCode < 91)
				|| (charCode > 96 && charCode < 123)) {
			return true;
		} else {
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
			message.innerHTML = "Enter Minimum 4 Characters ";
			return false;
		}

	}

	function allaplh1(inputtxt1) {
		var numbers = /^[A-Za-z]{4,10}$/g;
		var message = document.getElementById('message3');
		if (inputtxt1.value.match(numbers)) {
			message.innerHTML = "";
			return true;
		} else {
			message.innerHTML = "Enter Minimum 4 Characters ";
			return false;
		}
	}
	function allnumeric(inputtxt) {
		var numbers = /^[7-9][0-9]{9}$/g;
		var message = document.getElementById('message');
		if (inputtxt.value.match(numbers)) {
			message.innerHTML = "";

			return true;
		} else {
			message.innerHTML = "Enter 10 digit Number ";

			return false;
		}
	}
	function isNumber(evt) {
		evt = (evt) ? evt : window.event;
		var charCode = (evt.which) ? evt.which : evt.keyCode;
		if (charCode > 31 && (charCode < 49) || (charCode > 57)) {
			return false;
		}
		return true;
	}

	
</script>


</head>
<body style="margin-top: 10px">

	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Out-Patient Enquire</label>
					</div>
					<div class="panel-body">

						<div class="row">
							<div class="col-xs-6"></div>
							<div class="col-xs-6">
								<form action="serrchpatient1.html" class="abcd">
									<label for="lname">Search By Patient MR.No</label> <input
										type="text" class="form-control" name="mrno" onkeypress="return numberOnly1(this, event)"
										minlength="3" maxlength="30" autocomplete="off" >
							</div>
							<div>
								<div class="row">
									<div class="col-xs-6"></div>
									<div class="col-xs-6">

										<label for="lname">Search By Patient Name</label> <input
											type="text" class="form-control"   onkeypress="return numberOnly(this, event)"
										minlength="3" maxlength="30" autocomplete="off" name="pname">
									</div>
								</div>



								<div class="row" style="margin-top: 3%">
									<div class="col-xs-3"></div>
									<div class="col-xs-3"></div>

									<div class="col-xs-3"></div>
									<div class="col-xs-3">
										<button style="margin-left: 50px" type="submit"
											class="btn btn-info">
											<span class="glyphicon glyphicon-search"></span> Search
										</button>
									</div>
									</form>
								</div>
							</div>

						</div>

					</div>
					</form>
					<div class="row"
						style="padding-left: 450px; padding-right: 450px; padding-top: 20px;">
						<center>
							<div class="alert alert-success">Total  Out-Patient
								[${numbers}]</div>
						</center>
					</div>
					<div class="bs-example">
						<c:if test="${empty abc}">
						<h5 style="color: red;" align="center">SORRY NO DATA FOUND!</h5>
							</c:if>
						
							<table class="table table-bordered">
								<thead>
									<tr style="background-color: #337ab7; color: #f9f8f8">
										<th><span class="glyphicon glyphicon-book"></span>
											Patient MR.No</th>
										<th><span class="glyphicon glyphicon-user"></span>
											Patient Name</th>
										<th><span class="glyphicon glyphicon-calendar"></span>
											Registration Date</th>
										<th><i class="fa fa-user-md"></i>
											Doctor</th>


									</tr>
								</thead>

								<tbody>
									<c:forEach items="${abc}" var="abc">
										<tr>

											<td><c:out value="${abc.patientmrno}" /></td>

											<td><c:out value="${abc.patientname}" /></td>
											<td><c:out value="${abc.regdate}" /></td>
											<td><c:out value="${abc.consultantdoctor}" /></td>


										</tr>
									</c:forEach>
								</tbody>

							</table>
					
					</div>
				</div>

			</div>

		</div>
	</div>
</body>
</html>