<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sales Return</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Sales Return</title>
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




	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label> Sales Return</label>
					</div>


					<form:form modelAttribute="salesEntryPojo" method="post"
						action="getProductdetailsName234.html">

						<div class="panel-body"
							style="padding-left: 10%; padding-right: 10%">
							<div class="row">
								<div class="col-xs-6">
									<label for="lname">Customer Name</label>
									<form:select path="name" onchange="this.form.submit()" class="form-control">
										<form:option value="None">--Select--</form:option>
										<form:options items="${customerName}" required="required"
											class="form-control" autocomplete="off" />
									</form:select>
								</div>
							</div>

							<div class="row">
								<div class="col-xs-6">
									<label>Billing Type</label>
									<form:select path="billingType" class="form-control">
										<form:option value="None" class="form-control">--Select--</form:option>
										<form:options items="${billingType}" required="required"
											class="form-control" autocomplete="off" />
									</form:select>
								</div>
							</div>

							<div class="row">
								<div class="col-xs-6">

									<form:label path="salesDate">Sales Date</form:label>
									<form:input path="salesDate" required="required"
										class="form-control" type="date" />

								</div>
							</div>

							<div class="row">
								<div class="col-xs-6">
									<label>Sales Type:</label>
									<form:select path="salesType" class="form-control">
										<form:option value="None" >--Select--</form:option>
										<form:options items="${salesType}" required="required"
											autocomplete="off" />
									</form:select>
								</div>
							</div>
							</div>
					</form:form>













					<form:form modelAttribute="salesEntryPojo" method="post"
						action="getProductdetails234.html">
						<div class="bs-example" style="padding-top: 5%">
							<table class="table table-bordered">
								<thead>
									<tr style="background-color: #337ab7; color: #f9f8f8">
										<th><span class="glyphicon glyphicon-list-alt"></span>Product
											Name</th>
										<th><span class="glyphicon glyphicon-user"></span>Batch
											No</th>
										<th><span class="glyphicon glyphicon-list-alt"></span>Availble
											Quantity</th>
										<th><span class="glyphicon glyphicon-user"></span> MFG.Dt</th>
										<th><span class="glyphicon glyphicon-user"></span>EXP.Dt</th>
										<th><span class="glyphicon glyphicon-eye-open"></span>Paid
											Qty</th>
										<th><span class="glyphicon glyphicon-user"></span> Unit
											Rate</th>
										<th><span class="glyphicon glyphicon-user"></span>Value</th>
										<th><span class="glyphicon glyphicon-user"></span>Disc(%)</th>
										<th><span class="glyphicon glyphicon-user"></span>Amount</th>
									</tr>




									<tr
										style="background-color: white; color: black; text-align: center;"
										height="30px">

										<td><form:select path="productName" class="form-control"
												onchange="this.form.submit()">
												<form:option value="None" class="form-control">--Select--</form:option>
												<form:options items="${productname}" required="required"
													autocomplete="off" />
											</form:select></td>
										<td><form:input path="batNo" required="required"
												class="form-control" /></td>
										<td><form:input path="availQuty" required="required"
												type="number" class="form-control" /></td>
										<td><form:input path="mfgdate" required="required"
												class="form-control" /></td>
										<td><form:input path="expdate" required="required"
												class="form-control" /></td>
										<td><form:input path="salesQty" required="required"
												class="form-control" /></td>
										<td><form:input path="utRate" required="required"
												class="form-control" readonly="true" /></td>
										<td><form:input path="value" required="required"
												class="form-control" readonly="true" /></td>
										<td><form:input path="discount" required="required"
												class="form-control" type="number" step="0.1" /></td>
										<td><form:input path="amount" required="required"
												class="form-control" readonly="true" /></td>
									</tr>
							</table>

							<input type="submit" value="ADD" name="add">
						</div>




						<div class="bs-example" style="padding-top: 5%">
							<table class="table table-bordered">
								<thead>
									<tr style="background-color: #337ab7; color: #f9f8f8">
										<th><span class="glyphicon glyphicon-list-alt"></span>Product
											Name</th>
										<th><span class="glyphicon glyphicon-user"></span>Batch
											No</th>
										<th><span class="glyphicon glyphicon-list-alt"></span>Availble
											Quantity</th>
										<th><span class="glyphicon glyphicon-user"></span> MFG.Dt</th>
										<th><span class="glyphicon glyphicon-user"></span>EXP.Dt</th>
										<th><span class="glyphicon glyphicon-eye-open"></span>Paid
											Qty</th>
										<th><span class="glyphicon glyphicon-user"></span> Unit
											Rate</th>
										<th><span class="glyphicon glyphicon-user"></span>Value</th>
										<th><span class="glyphicon glyphicon-user"></span>Disc(%)</th>
										<th><span class="glyphicon glyphicon-user"></span>Amount</th>
									</tr>
								</thead>
								<c:forEach items="${getAddingProductDetails}" var="abc">
									<tr
										style="background-color: white; color: black; text-align: center;"
										height="30px">

										<td><c:out value="${abc.productName}" /></td>
										<td><c:out value="${abc.batNo}" /></td>
										<td><c:out value="${abc.availQuty}" /></td>
										<td><c:out value="${abc.mfgdate}" /></td>
										<td><c:out value="${abc.expdate}" /></td>
										<td><c:out value="${abc.salesQty}" /></td>
										<td><c:out value="${abc.utRate}" /></td>
										<td><c:out value="${abc.value}" /></td>
										<td><c:out value="${abc.discount}" /></td>
										<td><c:out value="${abc.amount}" /></td>
										<%-- 	<td><a href="delete.html?salesReturnsid=${abc.salesReturnsid}">Delete</a></td> --%>

									</tr>
								</c:forEach>
							</table>
						</div>



						<div class="row">
							<div class="col-xs-6"></div>
							<div class="col-xs-6">
								<form:label path="totalAmount">Total Amount</form:label>
								<form:input path="totalAmount" required="required"
									class="form-control" value="${totlaAmount[0] }" type="number"
									step="0.01" />
							</div>
						</div>
						<div class="row">
							<div class="col-xs-6"></div>
							<div class="col-xs-6">

								<form:label path="avgDiscount">Average Discount</form:label>
								<form:input path="avgDiscount" required="required" type="number"
									class="form-control" step="0.01" />

							</div>
						</div>
						<div class="row">
							<div class="col-xs-6"></div>
							<div class="col-xs-6">
								<form:label path="netTotal">Net Total</form:label>
								<form:input path="netTotal" required="required" type="number"
									class="form-control" step="0.01" />
							</div>
						</div>
						<div class="row">
							<div class="col-xs-6"></div>
							<div class="col-xs-6">
								<form:label path="returnAmount">Return Amount</form:label>
								<form:input path="returnAmount" required="required"
									class="form-control" type="number" step="0.01" />
							</div>
						</div>

						<input type="submit" value="SUBMIT" name="total">
					</form:form>


				</div>
			</div>
		</div>
	</div>

</body>
</html>
