<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<title>Product Type</title>
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
						<label> Stock Position</label>
					</div>
					<div class="panel-body"
						style="padding-left: 30%; padding-right: 30%">
						
						<div class="row">

                              <form:form method="POST" action="searchbyptype.html"
								modelAttribute="user">
								<form:label path="type">Search By Product Type</form:label>
								<form:select path="type" onchange="this.form.submit()" class="form-control">
									<form:option value="None">--SelectProductType--</form:option>
									<form:options items="${ptypes}" required="required"
										autocomplete="off" />
								</form:select>

							</form:form>


						</div>
						<div class="row">
							<form:form method="POST" action="searchbyproduct.html"
								modelAttribute="user">
								<form:label path="productTypeName">Search By Product Name</form:label>
								<form:select path="productTypeName" onchange="this.form.submit()" class="form-control">
									<form:option value="None">--SelectProductName--</form:option>
									<form:options items="${names}" required="required"
										autocomplete="off" />
								</form:select>

							</form:form>
						</div>



					</div>
					<div class="bs-example" style="padding-right:3%;padding-left:3%">
						<table class="table table-bordered">
							<thead>
								<tr style="background-color: #337ab7; color: #f9f8f8">
									<th><span class="glyphicon glyphicon-list-alt"></span>
										Product Code</th>
									<th><span class="glyphicon glyphicon-user"></span> Product
										Name</th>
									<th><span class="glyphicon glyphicon-tasks"></span> UOM</th>
									<th><span class="glyphicon glyphicon-calendar"></span> Exp Dt</th>
									<th><span class="glyphicon glyphicon-inbox"></span> Batch NO</th>
									<th><span class="glyphicon glyphicon-shopping-cart"></span> Quantity</th>
								</tr>
							</thead>

							<tbody>
							<c:if test="${empty user}">
				 <h5 style="color:red;text-align:center;">SORRY NO DATA FOUND!</h5>
				</c:if>
				<br>
         <br>
							
								<c:forEach items="${user}" var="user">
									<tr>
										<td><c:out value="${user.id}" /></td>
										<td><c:out value="${user.productTypeName}" /></td>
										<td><c:out value="${user.proUnit}" /></td>
										<td><c:out value="${user.expdate}" /></td>
										<td><c:out value="${user.batNo}" /></td>
										<td><c:out value="${user.avilQty}" /></td>

									</tr>
								</c:forEach>
							</tbody>

						</table>
					</div>
					<div class="row" style="padding-top: 3%;margin-bottom:20px">
						<button style="margin-left: 40%" type="button"
							class="btn btn-info">
							
						<a style="color:white;text-decoration:none" href="stockReport.html" onclick="return Validate()" colspan="4" >	 <span  class="glyphicon glyphicon-list-alt"></span> Report</a>
						</button>

						<!-- <button type="button" class="btn btn-info">
							<span class="glyphicon glyphicon-remove"></span> Close
						</button> -->
					</div>

				</div>



			</div>
		</div>
	</div>
</div>


</body>


</html>
