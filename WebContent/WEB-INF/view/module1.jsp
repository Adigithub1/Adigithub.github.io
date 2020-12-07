<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<link href="./css/prettify-1.0.css" rel="stylesheet">
<link href="./css/base.css" rel="stylesheet">
<link href="./css/prettify-1.0.css" rel="stylesheet">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="css/leave.css">
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script type="text/javascript">
	function confirmAction() {
		if (!confirm("are sure delete")) {
			return false;
		}
	}
</script>


</head>
<body  style="margin-top:10px">

	<div class="container-fluid">
		<div class="container">
			<div class="row"  style="padding:0px">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Patient Appointment</label>
					</div>

					<div class="panel-body">
						<form action="register.html">
							<button type="submit" class="btn btn-info">
								<span class="glyphicon glyphicon-plus"></span>ADD
							</button>
						</form>
						<form:form action="get.html" modelAttribute="user">
							<div class="row">
								<div class="col-xs-6">
									<form:label path="DoctorName">Doctor Name</form:label>
									<form:select path="DoctorName" items="${doct}" required="required"
										class="form-control" id="sel1"></form:select>
								</div>
								
								<!-- id="Appointment" -->

								<div class="col-xs-6">
									<form:label path="appointmentDate">Appointment Date</form:label>
									<form:input path="appointmentDate"  required="required" type="date"
										placeholder="select date" class="form-control" />
								</div>
						</form:form>
						<div class="row" style="margin-top: 80px">
							<center>
								<button type="submit" class="btn btn-info">
									<span class="glyphicon glyphicon-search"></span> Search
								</button>
								
							<!-- 	<button type="submit" class="btn btn-info" name="patientAmppointMneReport">
									<span class="glyphicon glyphicon-list"></span> Report
								</button> -->
								
								
								<!-- <button style="margin-left: 20px" type="submit"
									class="btn btn-info">
									<a style="color: white; text-decoration: none !important"
										href="patientAppontment.html"> <span
										class="glyphicon glyphicon-list-alt"> </span> Report
									</a>
								</button> -->
							</center>
						</div>
					</div>
				</div>
				<div class="row"
					style="padding-left: 450px; padding-right: 450px; padding-top: 20px;">

				</div>
				<div class="bs-example" style="padding-left: 2%; padding-right: 2%">
					<table class="table table-bordered">
						<thead>
							<tr style="background-color: #337ab7; color: #f9f8f8">
								<th><span class="glyphicon glyphicon-list-alt"></span>
									Token No</th>
								<th><span class="glyphicon glyphicon-user"></span> Patient
									Name</th>
								<th><span class="glyphicon glyphicon-calendar"></span>
									Appointment Date</th>
								<th><span class="glyphicon glyphicon-time"></span>
									Appointment Time</th>
								<th><span class="glyphicon glyphicon-edit"></span>
									View/Edit</th>
								<th><span class="glyphicon glyphicon-trash"></span> Delete</th>
							</tr>
						</thead>
						<c:if test="${empty abc}">
							<div align="center">
								<h5 style="color: red">"SORRY NO DATA FOUND!"</h5>
							</div>
						</c:if>
						<c:forEach items="${abc}" var="abc">
							<tbody>

								<td><c:out value="${abc.tokenId}" /></td>
								<td><c:out value="${abc.patientName}" /></td>
								<td><c:out value="${abc.appointmentDate}" /></td>
								<td><c:out value="${abc.appointmentTime}" /></td>
								<td align=center><form action="edit2.html?id=${abc.id}"
										method="post">
										<button class="btn btn-info">
											<span class="glyphicon glyphicon-edit"></span>
										</button>
									</form></td>
								<td align=center>										<a class="btn btn-info" href="delete.html?id=${abc.id}"
											onclick="return confirmAction()"><span
											class="glyphicon glyphicon-trash"></span> </a>
									</td>
							</tbody>
						</c:forEach>
					</table>
				</div>
			</div>

		</div>

	</div>
	</div>

	<script>
	    $(document).ready(function() {
	        $("#Appointment").datepicker({
	            dateFormat: "mm/dd/yy",
	            changeMonth: true,
	            changeYear: true,
	            maxDate: "+0d",
	            minDate: "-40Y",
	            yearRange: "-40:+1"
	        });
	    });
  </script>
</body>
</html>