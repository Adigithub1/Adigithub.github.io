<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SALES ENTRY List</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SALES ENTRY FORM</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

</head>
<body>
	<br>
	<br>
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Sales Entry</label>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-xs-2" style="padding-left: 5%">
								<a href="salesEntryFirstDetailsOFSalesEntry.html"
									class="btn btn-info"><span
									class="glyphicon glyphicon-plus"></span>Add</a>
							</div>

							<form:form modelAttribute="salesEntryPojo" method="post"
								action="retriveDayDetails.html">
								<div class="col-xs-3">
									<form:label path="salesDate"
										style="padding-top:3%;padding-left:13%">Search By Sale Date</form:label>
								</div>
								<div class="col-xs-4">
									<form:input id="salesDate" type="date" path="salesDate"
										class="form-control" />
								</div>
								<div class="col-xs-3">
									<button type="submit" class="btn btn-info">
										<span class="glyphicon glyphicon-search"></span> Search
									</button>
								</div>
							</form:form>

						</div>
						<div align="center">
							<h3 align="center"></h3>


							<div class="bs-example" style="padding: 3%">
								<table class="table table-bordered">
									<thead>
										<tr style="background-color: #337ab7; color: #f9f8f8">

											<th><span class="glyphicon glyphicon-user"></span>
												Customer Name</th>
											<th><span class="glyphicon glyphicon-user"></span>
												CusType</th>
											<th><span class="glyphicon glyphicon-calendar"></span>
												SaleDate</th>
											<th><span class="glyphicon glyphicon-list-alt"></span>
												Total Amount</th>
											
											<th><span class="glyphicon glyphicon-print"></span>
												Print</th>


										</tr>
									</thead>
									<tbody>
										<c:forEach items="${user}" var="user">
											<tr>
												<td><c:out value="${user.name}" /></td>
												<td><c:out value="${user.customerType}" /></td>
												<td><c:out value="${user.salesDate}" /></td>
												<td><c:out value="${user.totalAmount}" /></td>
												<td align="center"> <form:form
														action="SalesReportById.html?salesid=${user.salesid}"
														modelAttribute="salesEntryPojo">
														<button  class="btn btn-info" type="submit">
																<span class="glyphicon glyphicon-print"></span>
															</button></form:form></td>
  
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>