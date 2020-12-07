<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>Sales Returns</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"
	media="screen,projection" />
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>


</head>
<body style="margin-top:10px">

	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Sales Return</label>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-xs-3" style="padding-left: 4%">
								<form action="salesEntryReturnsFirst2.html">
									<button type="submit" class="btn btn-info">
										<span class="glyphicon glyphicon-plus"></span>ADD
									</button>
								</form>
							</div>
							<form:form modelAttribute="salesEntryPojo" method="post"
								action="salesreturnsdetailsList446Name.html">
								<div class="col-xs-3">
									<div class="controls">


										<label style="padding-top: 3%; padding-right: 0px;">Search
											By Name</label>
									</div>
								</div>
								<div class="col-xs-3">
									<form:select path="name" required="required"
										onchange="this.form.submit()" class="form-control">
										<form:option value="None" class="form-control">--select--</form:option>
										<form:options items="${names}" autocomplete="off" />
									</form:select>
								</div>
							</form:form>

							<div class="col-xs-3">

								<form:form modelAttribute="salesEntryPojo" method="post"
									action="salesreturnsdetailsList446NameReport.html">

									<button style="margin-left: 50px" type="submit"
										class="btn btn-info">
										<span class="glyphicon glyphicon-list-alt"></span> Report
									</button>

								</form:form>

							</div>

						</div>

						<br> <br>


						<div class="bs-example" style="padding: 2%">
							<table class="table table-bordered">
								<thead>
									<tr style="background-color: #337ab7; color: #f9f8f8">
										<th><span class="glyphicon glyphicon-user"></span> Name</th>
										<th><span class="glyphicon glyphicon-usd"></span>
											Total Amount</th>
										<th><span class="glyphicon glyphicon-usd"></span>
											Return Amount</th>

									</tr>
								</thead>
								<tbody>
									<c:if test="${empty details}">
										<h3 style="color: red">NO DATA FOUND</h3>
									</c:if>


									<c:forEach items="${details}" var="abc">
										<tr>
											<td><c:out value="${abc.name}" /></td>
											<td><c:out value="${abc.netTotal}" /></td>
											<td><c:out value="${abc.returnAmount}" /></td>
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