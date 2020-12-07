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
<title>Purchase Invoise</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"
	media="screen,projection" />
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/leave.css">
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script>
        $(document).ready(function() {
            $("#my1").datepicker({
                dateFormat: "yy-mm-dd",
                changeMonth: true,
                changeYear: true,
                maxDate: "+0d",
                minDate: "-40Y",
                yearRange: "-40:+1"
            });
        });
  </script>
<script>
        $(document).ready(function() {
            $("#my2").datepicker({
                dateFormat: "yy-mm-dd",
                changeMonth: true,
                changeYear: true,
                maxDate: "+0d",
                minDate: "-40Y",
                yearRange: "-40:+1"
            });
        });
  </script>
</head>
<body  style="margin-top:10px">
	<form:form modelAttribute="purchaseInvoiceePojo" method="post"
		action="getProductdetails123456.html">
		<div class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<label>Purchase Invoice</label>
						</div>
						<div class="panel-body">
							<div class="row">

								<div class="col-xs-6">
									<label for="lname">Supplier Name</label>
									<form:select path="supplierName" onchange="this.form.submit()"
										required="required" class="form-control">
										<form:option value="None" class="form-control">--Select--</form:option>
										<form:options items="${supplierNameDb}" autocomplete="off" />
									</form:select>
									<!--  <select class="form-control">
									<option>Shwetha</option>
									<option>Shwetha</option>
									
								</select> -->

								</div>
								<div class="col-xs-6">
									<label>Invoice Number</label>
									<form:input path="invoiceNo" 
										class="form-control" value="${invoiceMax[0]}" readonly="true"/>
									<!-- <input type="text" class="form-control" name="name"> -->
								</div>
								<%-- <div class="col-xs-6">
							
                           <label for="lname">Supplier Code</label>
                           <form:input path="address" required="required" value="${supplierAddress[0]}" class="form-control"/>
                      
							</div> --%>
							</div>
							<div class="row">

								<div class="col-xs-6">
									<label>Address</label>

									<form:input path="address" required="required"
										value="${supplierAddress[0]}" class="form-control"
										readonly="true" />
									<!-- <input type="text" class="form-control" name="name"> -->
								</div>


								<div class="col-xs-6">
									<label>City</label>
									<form:input path="city" required="required"
										value="${supplierCity[0]}" class="form-control"
										readonly="true" />
									<!-- <input type="text" class="form-control" name="name"> -->
								</div>
							</div>
							<div class="row">

								<div class="col-xs-6">
									<label>purchase Type</label>

									<form:select path="purchaseType" required="required"
										class="form-control">
										<form:option value="None" class="form-control">--Select--</form:option>
										<form:options items="${purchaseType}" autocomplete="off" />
									</form:select>



									<!--  <select class="form-control">
									<option>Cash</option>
									<option>Card</option>
									
								</select> -->
								</div>


								<div class="col-xs-6">
									<label>GRN Number</label>
									<form:input path="grnNo" value="${grnNo[0]}"
										class="form-control" readonly="true" required="required"></form:input>

									<!-- <input type="text" class="form-control" name="name"> -->
								</div>

								
							</div>

							<div class="row">

								<div class="col-xs-6">
									<label>Invoice Date</label>

									<form:input path="invoiceDate" required="required"
										class="form-control" id="my1" />
									<!-- <input type="text" class="form-control" name="name"> -->
								</div>

						

								<div class="col-xs-6">
									<label>Received Date </label>
									<form:input path="recivedDate" required="required" id="my2"
										class="form-control" />
									<!-- <input type="text" class="form-control" name="name"> -->


								</div>
							</div>


							<div class="bs-example" style="margin-top:5%;width:100%  !important;overflow-x: scroll">
								<%-- 	<form:form modelAttribute="purchaseInvoiceePojo" method="post"
			action="getProductdetails123.html?supplierName=${SupplierNameDeatls[0]}"> --%>
								<table class="table table-bordered">
									<thead>
										<tr style="background-color: #337ab7; color: #f9f8f8">
											<!--  <th><span class="glyphicon glyphicon-list-alt"></span> Product ID</th> -->
											<th><span class="glyphicon glyphicon-list"></span> Pro.Name</th>
											<th><span class="glyphicon glyphicon-list-alt"></span> Packing</th>
											<th><span class="glyphicon glyphicon-user"></span> Mnf.By</th>
											<th><span class="glyphicon glyphicon-list-alt"></span> Pkd.Qty</th>
											<th><span class="glyphicon glyphicon-list"></span> Batch.No</th>
											<th><span class="glyphicon glyphicon-calendar"></span> Mnf.DATE</th>
											<th><span class="glyphicon glyphicon-calendar"></span> EXP.DATE</th>
											<th><span class="glyphicon glyphicon-tags"></span> Rate</th>

											<th><span class="glyphicon glyphicon-list-alt"></span> Qty</th>
											<th><span class="glyphicon glyphicon-usd"></span> Amount</th>
											<th><span class="glyphicon glyphicon-usd"></span> MRP</th>
											<th><span class="glyphicon glyphicon-trash"></span> Delete</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${getProductDetails}" var="abc">
											<tr>
												<td><c:out value="${abc.productName}" /></td>
												<td><c:out value="${abc.pack}" /></td>
												<td><c:out value="${abc.manufacturingBy}" /></td>
												<td><c:out value="${abc.batchNo}" /></td>
												<td><c:out value="${abc.mnfDate}" /></td>
												<td><c:out value="${abc.expDate}" /></td>
												<td><c:out value="${abc.rate}" /></td>
												<td><c:out value="${abc.qty}" /></td>
												<td><c:out value="${abc.amount}" /></td>
												<td><c:out value="${abc.mrp}" /></td>
												<td><a class="btn btn-info"
													href="deletePurchaseInvoiceListDetails.html?purchaseId=${abc.purchaseId}"><span class="glyphicon glyphicon-trash"></span></a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>

							<!-- <div class="row">
									<div class="col-xs-6">
		</div>
					<div class="col-xs-6">
								<label>Discount</label> 
 <input type="text" class="form-control" name="name">
						</div>
							</div> -->

							<div class="row">
								<div class="col-xs-3"></div>
								<div class="col-xs-6">
									<label>No Of Items</label>
									<form:input path="noOfitems" required="required" type="number"
										class="form-control" />
								</div><div class="col-xs-3"></div>
							</div>
							<div class="row">
								<div class="col-xs-3"></div>

								<div class="col-xs-6">

									<label for="lname">Sub Total</label>
									<form:input path="subTotal" required="required" type="number"
										class="form-control" step="0.01" id="" />

								</div><div class="col-xs-3"></div>
							</div>


							<div class="row" style="padding-top: 3%">
							<center>
								<button  type="submit"
									class="btn btn-info">
									<span class="glyphicon glyphicon-save"></span> Save
								</button>

								
									<a class="btn btn-info" style="color:white;text-decoration:none" href="cancelPurchaseInvoicedetilas.html"><span class="glyphicon glyphicon-remove"></span> Close</a>
								</center>
							</div>
						</div>



					</div>

				</div>
			</div>

		</div>

	</form:form>

</body>


</html>
