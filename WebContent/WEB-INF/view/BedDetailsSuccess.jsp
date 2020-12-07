<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BedDetailsSuccess</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link type="text/css" rel="stylesheet" href="css/bootstrap.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"
	media="screen,projection" />
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>


<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/smoothness/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
</head>
<body style="margin-top:10px">
<div class="row">

<div class="col-xs-2" style="padding-left:5%">
	<form action="beddetailsAdd.html">
					<button type="submit" class="btn btn-info" >
      <span class="glyphicon glyphicon-plus"></span> Add
    </button>
    </form>
</div>
</div>
	<br>
	<center><h4>Ground Floor</h4></center>
	 <div class="bs-example" style="padding-left: 3%;padding-right: 3%">
	<table class="table table-bordered" >
		<tr style="background-color: #337ab7; color: #f9f8f8">
			<th><span class="glyphicon glyphicon-list-alt"></span> Room
				No</th>
			<th><span class="glyphicon glyphicon-tags"></span> Bed Number</th>
			<th><span class="glyphicon glyphicon-bed"></span> Bed Type</th>
			<!-- <th><span class="glyphicon glyphicon-bed"></span> Bed Status</th> -->
		</tr>
		<c:forEach items="${groundFlour}" var="def">
			<tr
				style="background-color: white; color: black; text-align: center;"
				height="30px">
				<td><c:out value="${def.roomno}" /></td>
				<td><c:out value="${def.bedNo}" /></td>
				<td><c:out value="${def.bedType}" /></td>
			</tr>
		</c:forEach>
	</table>
</div>


	<center><h4>First Floor</h4></center>
	<div class="bs-example" style="padding-left: 3%;padding-right: 3%">
	<table class="table table-bordered" >
		<tr style="background-color: #337ab7; color: #f9f8f8">
			<th><span class="glyphicon glyphicon-list-alt"></span> Room
				No</th>
			<th><span class="glyphicon glyphicon-tags"></span> Bed Number</th>
			<th><span class="glyphicon glyphicon-bed"></span> Bed Type</th>
		<!-- 	<th><span class="glyphicon glyphicon-bed"></span> Bed Status</th> -->
		</tr>
		<c:forEach items="${firstFlour}" var="def">
			<tr
				style="background-color: white; color: black; text-align: center;"
				height="30px">
				<td><c:out value="${def.roomno}" /></td>
				<td><c:out value="${def.bedNo}" /></td>
				<td><c:out value="${def.bedType}" /></td>
			</tr>
		</c:forEach>
	</table>
</div>

	<center><h4>Second Floor</h4></center>
	<div class="bs-example" style="padding-left: 3%;padding-right: 3%">
	<table class="table table-bordered" >
		<tr style="background-color: #337ab7; color: #f9f8f8">
			<th><span class="glyphicon glyphicon-list-alt"></span> Room
				No</th>
			<th><span class="glyphicon glyphicon-tags"></span> Bed Number</th>
			<th><span class="glyphicon glyphicon-bed"></span> Bed Type</th>
		<!-- 	<th><span class="glyphicon glyphicon-bed"></span> Bed Status</th> -->
			</tr>
		<c:forEach items="${secondFlour}" var="def">
			<tr
				style="background-color: white; color: black; text-align: center;"
				height="30px">
				<td><c:out value="${def.roomno}" /></td>
				<td><c:out value="${def.bedNo}" /></td>
				<td><c:out value="${def.bedType}" /></td>
			</tr>
		</c:forEach>
	</table>
</div>

	<center><h4>Third Floor</h4></center>
	<div class="bs-example" style="padding-left: 3%;padding-right: 3%">
	<table class="table table-bordered" >
		<tr style="background-color: #337ab7; color: #f9f8f8">
			<th><span class="glyphicon glyphicon-list-alt"></span> Room
				No</th>
			<th><span class="glyphicon glyphicon-tags"></span> Bed Number</th>
			<th><span class="glyphicon glyphicon-bed"></span> Bed Type</th>
			<!-- <th><span class="glyphicon glyphicon-bed"></span> Bed Status</th> -->
			</tr>
		<c:forEach items="${thirdFlour}" var="def">
			<tr
				style="background-color: white; color: black; text-align: center;"
				height="30px">
				<td><c:out value="${def.roomno}" /></td>
				<td><c:out value="${def.bedNo}" /></td>
				<td><c:out value="${def.bedType}" /></td>
			</tr>
		</c:forEach>
	</table>
	</div>


	<center><h4>Fourth Floor</h4></center>
	<div class="bs-example" style="padding-left: 3%;padding-right: 3%">
	<table class="table table-bordered" >
		<tr style="background-color: #337ab7; color: #f9f8f8">
			<th><span class="glyphicon glyphicon-list-alt"></span> Room
				No</th>
			<th><span class="glyphicon glyphicon-tags"></span> Bed Number</th>
			<th><span class="glyphicon glyphicon-bed"></span> Bed Type</th>
			<!-- <th><span class="glyphicon glyphicon-bed"></span> Bed Status</th> -->
		</tr>
		<c:forEach items="${fourthFlour}" var="def">
			<tr
				style="background-color: white; color: black; text-align: center;"
				height="30px">
				<td><c:out value="${def.roomno}" /></td>
				<td><c:out value="${def.bedNo}" /></td>
				<td><c:out value="${def.bedType}" /></td>
			</tr>
		</c:forEach>
	</table>

</div>
	<center><h4>Fifth Floor</h4></center>
	<div class="bs-example" style="padding-left: 3%;padding-right: 3%">
	<table class="table table-bordered" >
		<tr style="background-color: #337ab7; color: #f9f8f8">
			<th><span class="glyphicon glyphicon-list-alt"></span> Room
				No</th>
			<th><span class="glyphicon glyphicon-tags"></span> Bed Number</th>
			<th><span class="glyphicon glyphicon-bed"></span> Bed Type</th>
			<!-- <th><span class="glyphicon glyphicon-bed"></span> Bed Status</th> -->
		</tr>
		<c:forEach items="${fifthFlour}" var="def">
			<tr
				style="background-color: white; color: black; text-align: center;"
				height="30px">
				<td><c:out value="${def.roomno}" /></td>
				<td><c:out value="${def.bedNo}" /></td>
				<td><c:out value="${def.bedType}" /></td>
			</tr>
		</c:forEach>
	</table>
</div>
	<center><h4>Sixth Floor</h4></center>
	<div class="bs-example" style="padding-left: 3%;padding-right: 3%">
	<table class="table table-bordered" >
		<tr style="background-color: #337ab7; color: #f9f8f8">
			<th><span class="glyphicon glyphicon-list-alt"></span> Room
				No</th>
			<th><span class="glyphicon glyphicon-tags"></span> Bed Number</th>
			<th><span class="glyphicon glyphicon-bed"></span> Bed Type</th>
			<!-- <th><span class="glyphicon glyphicon-bed"></span> Bed Status</th> -->
		</tr>
		<c:forEach items="${sixthFlour}" var="def">
			<tr
				style="background-color: white; color: black; text-align: center;"
				height="30px">
				<td><c:out value="${def.roomno}" /></td>
				<td><c:out value="${def.bedNo}" /></td>
				<td><c:out value="${def.bedType}" /></td>
			</tr>
		</c:forEach>
	</table>
</div>



</body>
</html>