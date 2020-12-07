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
<title>Purchase Return</title>
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
			dateFormat : "yy-mm-dd",
			changeMonth : true,
			changeYear : true,
			maxDate : "+0d",
			minDate : "-40Y",
			yearRange : "-40:+1"
		});
	});
</script>
<script>
	$(document).ready(function() {
		$("#my2").datepicker({
			dateFormat : "yy-mm-dd",
			changeMonth : true,
			changeYear : true,
			maxDate : "+0d",
			minDate : "-40Y",
			yearRange : "-40:+1"
		});
	});
</script>





<script language="javascript">
	function getVatTotalAmount() {
		var val1 = parseInt(document.getElementById("kx3").value);
		var val2 = parseInt(document.getElementById("kx4").value);
		var ansD = document.getElementById("kx5");
		ansD.value = val1 + ((val2 / 100) * val1);
	}
</script>



<script type="text/javascript">
	function alphaOnly(txt, e) {
		var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890 ";
		var code;
		if (window.event)
			code = e.keyCode;
		else
			code = e.which;

		var char = keychar = String.fromCharCode(code);
		if (arr.indexOf(char) == -1) {
			alert("Please enter alphanumarics");
			return false;
		}

	}
</script>




<script type="text/javascript">
	function alpha(txt, e) {
		var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ";
		var code;
		if (window.event)
			code = e.keyCode;
		else
			code = e.which;

		var char = keychar = String.fromCharCode(code);
		if (arr.indexOf(char) == -1) {
			alert("Please enter alphanumarics");
			return false;
		}

	}
</script>



<script language="javascript">
	function getAmount() {
		var val1 = parseInt(document.getElementById("kx1").value);
		var val2 = parseInt(document.getElementById("kx2").value);
		var ansD = document.getElementById("kx3");
		ansD.value = val1 * val2;
	}
</script>



<script language="javascript">
	function getNetTotalAmount() {
		var val1 = parseInt(document.getElementById("sud1").value);
		var val2 = parseInt(document.getElementById("sud2").value);
		var ansD = document.getElementById("sud3");
		ansD.value = val1 + ((val2 / 100) * val1);
	}
</script>


</head>
<body>
	<form:form modelAttribute="purchaseInvoiceePojo" method="post"
		action="getProductdetails123456.html">
		<div class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<label>Purchase Invoice Add</label>
						</div>
						<div class="panel-body"
							>
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
									<label>Grn No</label>
									<form:input path="grnNo" value="${grnNo[0]}"
										class="form-control" readonly="true" required="required"></form:input>

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

									<form:input path="address" required="required" readonly="true"
										value="${supplierAddress[0]}" class="form-control" />
									<!-- <input type="text" class="form-control" name="name"> -->
								</div>


								<div class="col-xs-6">
									<label>City</label>
									<form:input path="city" required="required" readonly="true"
										value="${supplierCity[0]}" class="form-control" />
									<!-- <input type="text" class="form-control" name="name"> -->
								</div>
							</div>
							<div class="row">

								<div class="col-xs-6">
									<label>Invoice No</label>
									<form:input path="invoiceNo" required="required" maxlength="7" readonly="true"
										minlength="4" class="form-control" value="${invoiceMax[0]}"/>
								</div>
<div class="col-xs-6">
									<label>Purchase Type</label>
									<form:select path="purchaseType" required="required"
										class="form-control">
										<form:option value="None" class="form-control">--Select--</form:option>
										<form:options items="${purchaseType}" autocomplete="off" />
									</form:select>
									<!--  <input type="text" class="form-control" name="name"> -->
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
										
										</tr>
									</thead>
									<tr>
										<td><form:select style="width:100px"  path="productName" required="required"
												class="form-control">
												<form:option value="None">--Select--</form:option>
												<form:options items="${productNameDb}" autocomplete="off" />
											</form:select></td>
										<td><form:input style="width:100px" path="pack" required="required"
												class="form-control" onkeypress="return alpha(this, event)" /></td>

										<td><form:input style="width:100px" path="manufacturingBy"
												required="required" class="form-control"
												value="${manufacturingBy[0]}" /></td>

										<td><form:input style="width:100px" path="packQty" required="required"
												class="form-control" type="number" step="1" /></td>

										<td><form:input style="width:100px" path="batchNo" required="required"
												value="${batchNo[0]}" class="form-control"
												onkeypress="return alphaOnly(this, event)" /></td>

										<td><form:input style="width:150px" path="mnfDate" required="required"
												type="date" class="form-control" /></td>

										<td><form:input style="width:150px" path="expDate" required="required"
												type="date" class="form-control" /></td>
										<td><form:input style="width:100px" path="rate" required="required"
												type="number" class="form-control" step="0.1" id="kx2" /></td>

										<td><form:input style="width:100px"  path="qty" required="required"
												type="number" class="form-control" id="kx1"
												onchange="getAmount()" /></td>

										<td><form:input style="width:100px" path="amount" required="required"
												class="form-control" id="kx3" value="" readonly="true" /></td>

										<td><form:input style="width:100px"  path="mrp" required="required"
												class="form-control" /></td>
									</tr>
								</table>
								
								<%-- </form:form> --%>
							</div>
<br>
<br>
<button type="submit" class="btn btn-info" name="add">
											<span class="glyphicon glyphicon-plus"></span> ADD
										</button>
							<div class="bs-example" style="margin-top:5%;width:100%  !important;overflow-x: scroll">
								<%-- 	<form:form modelAttribute="purchaseInvoiceePojo" method="post"
			action="getProductdetails123.html?supplierName=${SupplierNameDeatls[0]}"> --%>
								<table class="table table-bordered">
									<thead>
										<tr style="background-color: #337ab7; color: #f9f8f8">
											<!--  <th><span class="glyphicon glyphicon-list-alt"></span> Product ID</th> -->
																<!--  <th><span class="glyphicon glyphicon-list-alt"></span> Product ID</th> -->
											<th><span class="glyphicon glyphicon-list"></span> Pro.Name</th>
											<th><span class="glyphicon glyphicon-list-alt"></span> Packing</th>
											<th><span class="glyphicon glyphicon-user"></span> Mnf.By</th>
											<th><span class="glyphicon glyphicon-list-alt"></span> Pkd.Qty</th>
											<th><span class="glyphicon glyphicon-list"></span> Batch.No</th>
											<th><span class="glyphicon glyphicon-calendar"></span> Mnf.DATE</th>
											<th><span class="glyphicon glyphicon-calender"></span> EXP.DATE</th>
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
												<td><c:out value="${abc.packQty}" /></td>
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

							<div class="row">
								<div class="col-xs-6"></div>
								<!-- 
					<div class="col-xs-6">
								<label>Discount</label> 
 <input type="text" class="form-control" name="name">
						</div> -->
							</div>

							<div class="row">
								<div class="col-xs-3"></div>
								<div class="col-xs-6">
									<label>No Of Items</label>
									<form:input path="noOfitems" required="required" type="number"
										value="${noOfItems[0]}" readonly="true" class="form-control" />

									<!--  <input type="text" class="form-control" name="name"> -->
								</div><div class="col-xs-3"></div>
							</div>
							<div class="row">
								<div class="col-xs-3"></div>

								<div class="col-xs-6">
									<label for="lname">Total</label>
									<form:input path="subTotal" required="required" type="number"
										id="sud1" value="${totalamount[0]}" readonly="true"
										class="form-control" />
								</div><div class="col-xs-3"></div>
							</div>


							<div class="row">
								<div class="col-xs-3"></div>

								<div class="col-xs-6">
									<label for="lname">Vat</label>
									<form:input path="vat" required="required" type="number"
										min="0" max="99" step="0.1" id="sud2" class="form-control"
										onchange="getNetTotalAmount()" />
								</div><div class="col-xs-3"></div>
							</div>


							<div class="row">
								<div class="col-xs-3"></div>
								<div class="col-xs-6">
									<label for="lname">Net Payable Amount</label>
									<form:input path="netPayable" required="required" type="number"
										readonly="true" class="form-control" id="sud3" value="" />
								</div><div class="col-xs-3"></div>
							</div>


							<div class="row" style="padding-top: 3%">
							<center>
								<button  type="submit"
									class="btn btn-info" name="total">
									<span class="glyphicon glyphicon-save"></span> Save
								</button>
								
	<a class="btn btn-info" href="cancelPurchaseInvoicedetilas.html"><span class="glyphicon glyphicon-remove"></span> Close</a>
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
