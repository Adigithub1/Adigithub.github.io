<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SALES ENTRY</title>
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


<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/smoothness/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>

<script>
	$(".datepicker1").datepicker('setDate', new Date());
</script>



<script type="text/javascript">
	function myFunction() {
		var date = new Date();

		var day = date.getDate();
		var month = date.getMonth() + 1;
		var year = date.getFullYear();

		if (month < 10)
			month = "0" + month;
		if (day < 10)
			day = "0" + day;

		var today = month + "/" + day + "/" + year;
		document.getElementById('datepicker1').value = today;
	}
</script>
<style>

</style>
</head>
<body>
<br>
<br>
<fieldset >
	<form:form modelAttribute="salesEntryPojo" method="post"
		action="getSalesProductdetails.html">
		<div class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<label>Sales Entry</label>
						</div>
					
						<div class="panel-body">

							<div class="row">
								<div class="col-xs-6">
									<form:label path="CustomerId">Sales Id</form:label>
									<form:input path="CustomerId" required="required"
										value="${customerId[0]}" class="form-control" readonly="true" />
								</div>
								<div class="col-xs-6" style="margin-left:-2%">
								<div class="col-xs-5" style="padding-top:7%">
									
										<form:label path="customerType">Customer Type</form:label></div>
									<div class="col-xs-7" style="padding-top:7%">
									<form:radiobuttons path="customerType" items="${customerType}"
										required="required"></form:radiobuttons></div>
						</div>
							</div>
							<div class="row">
								<div class="col-xs-6">

									<form:label path="name">Name</form:label>
									<form:input path="name" required="required"
										class="form-control" />
								</div>

								<div class="col-xs-6">
									<form:label path="billingType">Billing Type</form:label>
									<form:select path="billingType" class="form-control">
										<form:option value="None">--Select--</form:option>
										<form:options items="${billingType}" required="required"
											autocomplete="off" class="form-control" />
									</form:select>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-6">


									<form:label path="salesDate">Sales Date</form:label>
									<form:input path="salesDate" required="required" type="date"
										class="form-control" />
								</div>

								<div class="col-xs-6">

									<form:label path="salesType">Sales Type</form:label>
									<form:select path="salesType" class="form-control">
										<form:option value="None">--Select--</form:option>
										<form:options items="${salesType}" required="required"
											autocomplete="off" class="form-control" />
									</form:select>

								</div>
							</div>
							<br>
									<div class="bs-example" style="padding-top: 5% ;width:100%  !important;overflow-x: scroll">
								<table class="table table-bordered"  >
									<thead>
										<tr style="background-color: #337ab7; color: #f9f8f8">
												<th><span class="glyphicon glyphicon-list-alt"></span>
													ProductName</th>
												<th><span class="glyphicon glyphicon-tag"></span>
													BatchNo</th>
												<th><span class="glyphicon glyphicon-bookmark"></span>
													Avl.Qty</th>
												<th><span class="glyphicon glyphicon-calendar"></span>
													MFG.Date</th>
												
												<th><span class="glyphicon glyphicon-calendar"></span>
													Exp.Date</th>
												<th><span class="glyphicon glyphicon-bookmark"></span>
													SalesQty</th>
												<th><span class="glyphicon glyphicon-usd"></span>U.Rate</th>
												<th><span class="glyphicon glyphicon-usd"></span> value</th>
												<th><span class="glyphicon glyphicon-usd"></span>
													Disc(%)</th>
												<th><span class="glyphicon glyphicon-usd"></span>
													Amount</th>
											</tr>
										</thead>



										<tr>
											<td><form:select path="productName"
													onchange="this.form.submit()" class="form-control" style="width: 130px;"  id="batNo" name="batNo">
													<form:option value="None" class="form-control">--Select--</form:option>
													<form:options items="${productname}" required="required"
														class="form-control" autocomplete="off" />
												</form:select></td>
<td><form:input id="batNo" name="batNo" class="form-control" required="required" type="text" path="batNo" style="width: 100px;
"/></td>
												
<td><form:input id="batNo" name="batNo" class="form-control" required="required" type="text"  path="availQuty" style="
    width: 100px;
"/></td>
												
<td><form:input id="batNo" name="batNo" class="form-control" required="required" type="text"  path="mfgdate" style="
    width: 100px;
"/></td>
<td><form:input id="batNo" name="batNo" class="form-control" required="required" type="text" path="expdate" style="
    width: 100px;
"/></td>
<td><form:input id="batNo" name="batNo"  class="form-control" required="required" type="text" path="salesQty" style="
    width: 100px;
"/></td>
<td><form:input id="batNo" name="batNo" class="form-control" required="required" type="text"  path="utRate" style="
    width: 100px;
"/></td>
<td><form:input id="batNo" name="batNo" class="form-control" required="required" type="text"  path="value" style="
    width: 100px;
"/></td>
<td><form:input id="batNo" name="batNo" class="form-control" required="required" type="text"  path="discount" style="
    width: 100px;
"/></td>
<td><form:input id="batNo" name="batNo" class="form-control" required="required" type="text"  path="amount" style="
    width: 100px;
"/></td>
					
											
									
											
										</tr>
									</table>
									
								</div>
								<br>
								<br>
								<button type="submit" class="btn btn-info" name="add">
											<span class="glyphicon glyphicon-plus"></span> ADD
										</button>
						


							<div class="bs-example" style="margin-top:5%;width:100%  !important;overflow-x: scroll" >
								<table  class="table  table-bordered" >
									<thead>
										<tr style="background-color: #337ab7; color: #f9f8f8">

											<th style="width: 100px;"><span class="glyphicon glyphicon-list"></span>Pro.Name</th>
											<th style="width: 100px;"><span class="glyphicon glyphicon-calendar" ></span>BatchNo</th>
											<th style="width: 100px;"><span class="glyphicon glyphicon-bookmark"></span>AvlQty</th>
											<th style="width: 100px;"><span class="glyphicon glyphicon-calendar"></span>MFG.Date</th>
											<th style="width: 100px;"><span class="glyphicon glyphicon-calendar"></span>Exp.Date</th>
											<th style="width: 100px;"><span class="glyphicon glyphicon-bookmark"></span>Sales.Qty</th>
											<th style="width: 100px;"><span class="glyphicon glyphicon-tags"></span>U.Rate</th>
											<th style="width: 100px;"><span class="glyphicon glyphicon-usd"></span>
												value</th>
											<th style="width: 100px;"><span class="glyphicon glyphicon-tags"></span>Disc(%)</th>
											<th style="width: 100px;"><span class="glyphicon glyphicon-usd"></span> Amount</th>
											<th style="width: 100px;"><span class="glyphicon glyphicon-trash"></span>
												Delete</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach items="${getAddingProductDetails}" var="abc">
											<tr>
												<td style="width: 100px;"><c:out value="${abc.productName}" /></td>
												<td style="width: 100px;"><c:out value="${abc.batNo}" /></td>
												<td style="width: 100px;"><c:out value="${abc.availQuty}" /></td>
												<td style="width: 100px;"><c:out value="${abc.mfgdate}" /></td>
												<td style="width: 100px;"><c:out value="${abc.expdate}" /></td>
												<td style="width: 100px;"><c:out value="${abc.salesQty}" /></td>
												<td style="width: 100px;"><c:out value="${abc.utRate}" /></td>
												<td style="width: 100px;"><c:out value="${abc.value}" /></td>
												<td style="width: 100px;"><c:out value="${abc.discount}" /></td>
												<td style="width: 100px;"><c:out value="${abc.amount}" /></td>
												<td style="width: 100px;"><a class="btn btn-info" href="delete.html?prId=${abc.prId}"><span class="glyphicon glyphicon-trash"></span></a></td>

											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>




							<%-- <form:form modelAttribute="salesEntryPojo" method="post"
		action="saveTotalSalesEntry.html"> --%>

							<div class="row" style="padding-top:3%">
								<div class="col-xs-3"></div>
								<div          class="col-xs-6" style="margin-left:-2%" >
                                         <div          class="col-xs-4" style="padding-top:7%" >

									<form:label path="billStatus">Bill Type</form:label></div>
								<div align="left"         class="col-xs-8" style="padding-top:7%">	<form:radiobuttons path="billStatus" items="${billStatus}"
										required="required"></form:radiobuttons></div>
								</div><div class="col-xs-3"></div>
							</div>
							<div class="row">
								<div class="col-xs-3"></div>
								<div class="col-xs-6">
									<form:label path="totalAmount">Total Amount</form:label>
									<form:input path="totalAmount" required="required"
										value="${totlaAmount[0] }" type="number" step="0.01"
										class="form-control" readonly="true" />
								</div><div class="col-xs-3"></div>
							</div>
							
							<div class="row">
								<div class="col-xs-3"></div>
								<div class="col-xs-6">


									<form:label path="avgDiscount">Average Discount</form:label>
									<form:input path="avgDiscount" required="required"
										type="number" step="0.01" class="form-control" readonly="true" />
								</div><div class="col-xs-3"></div>
							</div>
							<div class="row">
								<div class="col-xs-3"></div>
								<div class="col-xs-6">


									<form:label path="netTotal">Net Total</form:label>
									<form:input path="netTotal" required="required" type="number"
										step="0.01" class="form-control" readonly="true" />

								</div><div class="col-xs-3"></div>
							</div>
							<div class="row">
								<div class="col-xs-3"></div>
								<div class="col-xs-6">

									<form:label path="cashRecived">Cash Received</form:label>
									<form:input path="cashRecived" required="required"
										type="number" step="0.01" class="form-control" readonly="true" />

								</div><div class="col-xs-3"></div>
							</div>
							<div class="row">
								<div class="col-xs-3"></div>
								<div class="col-xs-6">
									<form:label path="remainingCharge">Remaining Change</form:label>
									<form:input path="remainingCharge" required="required"
										type="number" step="0.01" class="form-control" readonly="true" />

								</div><div class="col-xs-3"></div>
							</div>
							<div class="row">
								<div class="col-xs-3"></div>
								<div class="col-xs-6" style="margin-top: 3%; margin-bottom: 3%"
									align="center">
									<button type="submit" class="btn btn-info">
										<span class="glyphicon glyphicon-save"></span> Save
									</button>

									<button class="btn btn-info">
										<a style="color: white; text-decoration: none"
											href="closeSalesEntrydetails.html"> <span
											class="glyphicon glyphicon-remove"> </span> Close
										</a>
									</button>

									<!--      <a href=".html" class="btn btn-info" class="glyphicon glyphicon-remove">close -->
									<!--      </a>   -->
								</div><div class="col-xs-3"></div>
							</div>

</div>

						</div>

					</div>
				</div>

			</div>
	</form:form>
</fieldset>
</body>
</html>
