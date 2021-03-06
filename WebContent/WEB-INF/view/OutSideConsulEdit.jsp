<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@  page import="java.util.Date"%>
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
<title>Add Doctor</title>
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
        
            document.getElementById("message1").onkeypress=function(e){
                   var e=window.event || e
                   var keyunicode=e.charCode || e.keyCode
                   //Allow alphabetical keys, plus BACKSPACE and SPACE
                   return (keyunicode>=65 && keyunicode<=122 ||keyunicode==46|| keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
                   }
       }
    </script>
    
    
    <script type="text/javascript">
  
    
        function numberOnly1(txt, e) {
      
            document.getElementById("message2").onkeypress=function(e){
                   var e=window.event || e
                   var keyunicode=e.charCode || e.keyCode
                   //Allow alphabetical keys, plus BACKSPACE and SPACE
                   return (keyunicode>=65 && keyunicode<=122 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
                   }
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
		if (charCode > 31 && (charCode < 48) || (charCode > 57)) {
			return false;
		}
		return true;
	}

	
</script>

</head>
<body>
	<c:if test="${!empty abc}">
		<c:forEach items="${abc}" var="abc">
			<form:form method="post" action="updateconsult.html?id=${abc.id}"
				commandName="outconsult">
				<div class="container-fluid">
					<div class="container">
						<div class="row">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<label> Add Outside Consultant</label>
								</div>
								<div class="panel-body">
									<div class="row">
										<div class="col-xs-6">


											<form:label path="specialization" for="lname">Specialization</form:label>
											<form:input path="specialization" class="form-control"  onkeypress="return numberOnly(this, event)" id="message1"
										minlength="3" maxlength="20" autocomplete="off" 
												value="${abc.specialization}" required="required" />
										</div>

										<div class="col-xs-6">

											<form:label path="consultantName" for="lname">Consultant Name</form:label>
											<form:input path="consultantName" class="form-control" onkeypress="return numberOnly1(this, event)" id="message2"
										minlength="3" maxlength="20" autocomplete="off" 
												value="${abc.consultantName}" required="required" />
										</div>
									</div>

									<div class="row">


										<div class="col-xs-6">

											<form:label path="consultantType">Consultant Type</form:label>
											<form:select path="consultantType" class="form-control" required="required">

										< <form:option value="${abc.consultantType}">${abc.consultantType}</form:option>
												<form:options items="${type}" />

											</form:select>

										</div>
										<div class="col-xs-6">


											<form:label path="phoneNo" for="lname">Phone No </form:label>
											<form:input path="phoneNo" class="form-control"
												value="${abc.phoneNo}"  id="Mobile_Number"
											
											onkeypress="return isNumber(event)" minlength="10"
											maxlength="10"
											onkeyup="allnumeric(document.form1.MobileNumber);"
									required="required" autocomplete="off" />
										</div>
									</div>
									<div class="row"></div>

									<div class="row">
										<div class="col-xs-6">



											<form:label path="consultantFee" for="lname">Consultant Fee</form:label>
											<form:input path="consultantFee" class="form-control"
												value="${abc.consultantFee}" id="Mobile_Number"
											
											onkeypress="return isNumber(event)" minlength="1"
											maxlength="9"
											onkeyup="allnumeric(document.form1.MobileNumber);" required="required" />
										</div>

										<div class="col-xs-6">



											<form:label path="extraFee" for="lname">Extra Fee</form:label>
											<form:input path="extraFee" class="form-control" id="Mobile_Number"
											
											onkeypress="return isNumber(event)" minlength="1"
											maxlength="9"
											onkeyup="allnumeric(document.form1.MobileNumber);"
												value="${abc.extraFee}" required="required" />
										</div>
									</div>
									<div class="row">
										<div class="col-xs-6">



											<form:label path="address" for="lname">Address</form:label>



											<textarea rows="4" cols="50" class="form-control"  minlength="5"
												name="address">
 ${abc.address}
</textarea>
										</div>
									</div>





									<div class="row" style="padding-top: 3%; padding-left: 27%">
										<button style="margin-left: 200px; margin-right: 20px"
											type="submit" class="btn btn-info">
											<span class="glyphicon glyphicon-refresh"></span> Update
										</button>

										<a href="outconsult.html" class="btn btn-info">
								<span class="glyphicon glyphicon-remove"></span> Close
							</a>
									</div>


								</div>
							</div>
						</div>


					</div>
				</div>
			</form:form>

		</c:forEach>
	</c:if>
</body>


</html>
