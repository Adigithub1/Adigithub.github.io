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
<title>Purchase Invoice</title>
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
						<label>Purchase Invoice</label>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-xs-2" style="padding-left:4%">
								<form action="addPurchaseInvoiceFirstFirst.html.html">
								<button type="submit"  class="btn btn-info">
										<a style="color:white;text-decoration:none"
											href="addPurchaseInvoiceFirstFirst.html"><span class="glyphicon glyphicon-plus"></span>ADD</a>
									</button>
								</form>
							</div>



<form:form modelAttribute="purchaseInvoiceePojo" method="post"
								action="searchSuppliername.html">
							<div class="col-xs-3"><label style="padding-top:3%; padding-right: 0px;align:right">Search
											By Sup.Name</label></div>
							
								<div class="col-xs-3">

									<div class="controls">


										
										<form:input id="supplierName" type="text" path="supplierName"
											class="form-control" />

									</div>
								</div>
								<div class="col-xs-4">
									<button  type="submit"
										class="btn btn-info">
										<span class="glyphicon glyphicon-search"></span> Search
									</button>
									<button  type="button"
										class="btn btn-info">
										<span class="glyphicon glyphicon-list-alt"><a style="color:white;text-decoration:none" href="generateInvoiseReport.html"></span> Report</a>
									</button>

								</div>
							</form:form>
						</div>
					</div>

<br>


					<%-- 
					<div class="row"
						style="padding-left: 450px; padding-right: 450px; padding-top: 20px;">
						<center>
							<div class="alert alert-success">
								<span class="glyphicon glyphicon-ok"></span> Record Inserted
								Successfully......
							</div>
						</center>
					</div>
 --%>




					<div class="bs-example" style="padding:3%">
						<table class="table table-bordered">
							<thead>
								<tr style="background-color: #337ab7; color: #f9f8f8">
									<th><span class="glyphicon glyphicon-user"></span>Sup.Name</th>
									<th><span class="glyphicon glyphicon-list-alt"></span>Grn_No</th>
									<th><span class="glyphicon glyphicon-list"></span>Inv.No</th>
									<th><span class="glyphicon glyphicon-calendar"></span>Inv.Date</th>
									<th><span class="glyphicon glyphicon-calendar"></span>Rd.Date</th>
									<th><span class="glyphicon glyphicon-usd"></span>T.Amt</th>
								
									<th><span class="glyphicon glyphicon-print"></span> Print</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty user}">
									<h5 style="color: red" align="center">SORRY NO DATA FOUND!</h5>
								</c:if>


								<c:forEach items="${user}" var="user">
									<tr>
										<td><c:out value="${user.supplierName}" /></td>
										<td><c:out value="${user.grnNo}" /></td>
										<td><c:out value="${user.invoiceNo}" /></td>
										<td><c:out value="${user.invoiceDate}" /></td>
										<td><c:out value="${user.recivedDate}" /></td>
										<td><c:out value="${user.netPayable}" /></td>
										
										<td align="center"><a  class="btn btn-info" href="purchaseinvoiseareport.html?id=${user.id}"><span
											class="glyphicon glyphicon-print"></span></a></td>
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