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
<title>Purchase Returns</title>
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
						<label>Purchase Return</label>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-xs-2" style="padding-left:3%;">
								<form action="purchaseReturnsFirstDetailsPurchase.html">
									<button type="submit" class="btn btn-info">
										<span class="glyphicon glyphicon-plus"></span>ADD
									</button>
								</form>
							</div>




							<div class="col-xs-4"><label style="padding-top: 3%; margin-right: 0px;">Search
											By Supplier Name</label></div>
							<div class="col-xs-3">
								<div class="controls">

									<form:form modelAttribute="purchaseInvoiceePojo" method="post"
										action="searchBySupplierName.html">
										
										<form:select path="supplierName" required="required"
											onchange="this.form.submit()" class="form-control">
											<form:option value="None" class="form-control">--select--</form:option>
											<form:options items="${supplierNameDb}" autocomplete="off" />
										</form:select>
									</form:form>
								</div>
							</div>
							<div class="col-xs-3">
								<!-- <button style="margin-left: 20px" type="button"
									class="btn btn-info">
									<span class="glyphicon glyphicon-search"></span> Search
								</button>
 -->

								<button  type="button"
									class="btn btn-info">
									<a style="color:white;text-decoration:none" href="purchaseReturnsreport.html"><span class="glyphicon glyphicon-list-alt"></span> Report</a>
								</button>

							</div>

						</div>
					</div>
					<div class="bs-example" style="padding: 3%;">
						<table class="table table-bordered">
							<thead>
								<tr style="background-color: #337ab7; color: #f9f8f8">
									<th><span class="glyphicon glyphicon-user"></span>
										Sup.Name</th>
									<th><span class="glyphicon glyphicon-map-marker"></span>Address</th>

									<th><span class="glyphicon glyphicon-map-marker"></span> City</th>

									<th><span class="glyphicon glyphicon-list"></span>
										Pur.Type</th>
									<th><span class="glyphicon glyphicon-list-alt"></span>
										Rtr.No</th>
									<th><span class="glyphicon glyphicon-list"></span>
										Inv.No</th>
									<th><span class="glyphicon glyphicon-calendar"></span>
										Inv.Dt</th>
									<th><span class="glyphicon glyphicon-calendar"></span>
										Rcvd.Date</th>
									<th><span class="glyphicon glyphicon-usd"></span>
										T.Amt</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty purchaseReturnList}">
								<center>
									<h5 style="color: red">SORRY NO DATA FOUND!</h5>
									</center>
								</c:if>
								<c:forEach items="${purchaseReturnList}" var="abc">
									<tr>
										<td><c:out value="${abc.supplierName}" /></td>
										<td><c:out value="${abc.address}" /></td>
										<td><c:out value="${abc.city}" /></td>
										<td><c:out value="${abc.purchaseType}" /></td>
										<td><c:out value="${abc.grnNo}" /></td>
										<td><c:out value="${abc.invoiceNo}" /></td>
										<td><c:out value="${abc.invoiceDate}" /></td>
										<td><c:out value="${abc.recivedDate}" /></td>
										<td><c:out value="${abc.subTotal}" /></td>
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