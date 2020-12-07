<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SALES ENTRY FORM</title>


<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/smoothness/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
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
<link rel="stylesheet" href="css/leave.css">
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
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


<script language="javascript">
	function avgDiscount() {
		var val1 = parseInt(document.getElementById("kx5").value);
		var val2 = parseInt(document.getElementById("kx6").value);
		var ansD = document.getElementById("kx7");
		ansD.value = (val1) - (((val2 / 10) / (val1)) * 100);
	}
</script>

<script language="javascript">
	function cashChange() {
		var val1 = parseInt(document.getElementById("kx7").value);
		var val2 = parseInt(document.getElementById("kx8").value);
		var ansD = document.getElementById("kx9");
		ansD.value = val1 - val2;
	}
</script>


<script language="javascript">
	function getValue() {
		var val1 = parseInt(document.getElementById("kx1").value);
		var val2 = parseInt(document.getElementById("kx2").value);
		var ansD = document.getElementById("kx3");
		ansD.value = val1 * val2;
	}
</script>


<script language="javascript">
	function getsubDiscount() {
		var val1 = parseInt(document.getElementById("kx3").value);
		var val2 = parseInt(document.getElementById("kx4").value);
		var ansD = document.getElementById("kx5");
		ansD.value = (val1) - (((val2 / 100) * (val1)));
	}
</script>

<script language="javascript">
	function getsubDiscount1() {
		var val1 = parseInt(document.getElementById("sud1").value);
		var val2 = parseInt(document.getElementById("sud2").value);
		var ansD = document.getElementById("kx7");
		ansD.value = (val1) - (((val2 / 100) * (val1)));
	}
</script>


<script type="text/javascript">
	function alphaOnly(txt, e) {
		var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz  ";
		var code;
		if (window.event)
			code = e.keyCode;
		else
			code = e.which;

		var char = keychar = String.fromCharCode(code);
		if (arr.indexOf(char) == -1) {
			alert("Please enter charecters");
			return false;
		}

	}
</script>

</head>
<body onload="myFunction()">


	<form:form modelAttribute="salesEntryPojo" method="post"
		action="getSalesProductdetails.html">
		<div class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<label>Sales Entry</label>
						</div>
						<%-- <div class="panel-body"
							style="padding-left: 10%; padding-right: 10%">
							<div class="row">


								<div class="col-xs-6">

									<form:label path="CustomerId">Sales Id</form:label>
									</td>
									<form:input path="CustomerId" value="${customerId[0]}"
										readonly="true" required="required" class="form-control"></form:input>
									</td>
								</div>


								<div class="col-xs-6">

									<form:label path="customerType">Customer Type</form:label>
									</td>
									<form:radiobuttons path="customerType" items="${customerType}"
										required="required" class="form-control"></form:radiobuttons>
									</td>
								</div>

								<div class="col-xs-6">
									<form:label path="name">Name</form:label>
									<form:input path="name" required="required"
										onkeypress="return alphaOnly(this, event)"
										class="form-control" />
								</div>

								<div class="col-xs-6">
									<form:label path="billingType">Billing Type</form:label>
									<form:select path="billingType" required="required"
										class="form-control">
										<form:option value="None">--Select--</form:option>
										<form:options items="${billingType}" autocomplete="off"
											class="form-control" />
									</form:select>
								</div>

								<div class="col-xs-6">
									<form:label path="salesDate">Sales Date</form:label>
									<form:input path="salesDate" required="required" type="date"
										class="form-control" />

								</div>
								<div class="col-xs-6">
									<form:label path="salesType">Sales Type</form:label>
									<form:select path="salesType" required="required"
										class="form-control">
										<form:option value="None">--Select--</form:option>
										<form:options items="${salesType}" autocomplete="off"
											class="form-control" />
									</form:select>
								</div>
 --%>
						<div class="panel-body">
							<div class="row">
								<div class="col-xs-6">
									<form:label path="CustomerId">Sales Id</form:label>
									<form:input path="CustomerId" required="required"
										value="${customerId[0]}" class="form-control" readonly="true" />
								</div>
								<div class="col-xs-6" style="margin-left: -2%">
									<div class="col-xs-6" style="padding-top: 7%">
										<form:label path="customerType">Customer Type</form:label>
									</div>
									<div class="col-xs-6" style="padding-top: 7%">
										<form:radiobuttons path="customerType" items="${customerType}"
											required="required"></form:radiobuttons>
									</div>

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




							<c:forEach items="${productRelatedDetails}" var="abc">
								<div class="bs-example"
									style="margin-top: 5%; width: 100% !important; overflow-x: scroll">
									<table class="table table-bordered">
										<thead>
											<tr style="background-color: #337ab7; color: #f9f8f8">

												<th style="width: 100px;"><span
													class="glyphicon glyphicon-list"></span> Pro.Name</th>
												<th style="width: 100px;"><span
													class="glyphicon glyphicon-calendar"></span> BatchNo</th>
												<th style="width: 100px;"><span
													class="glyphicon glyphicon-bookmark"></span> AvlQty</th>
												<th style="width: 100px;"><span
													class="glyphicon glyphicon-calendar"></span> MFG.Date</th>
												<th style="width: 100px;"><span
													class="glyphicon glyphicon-calendar"></span> Exp.Date</th>
												<th style="width: 100px;"><span
													class="glyphicon glyphicon-bookmark"></span> Sales.Qty</th>
												<th style="width: 100px;"><span
													class="glyphicon glyphicon-tags"></span> U.Rate</th>
												<th style="width: 100px;"><span
													class="glyphicon glyphicon-usd"></span> value</th>
												<th style="width: 100px;"><span
													class="glyphicon glyphicon-tags"></span> Disc(%)</th>
												<th style="width: 100px;"><span
													class="glyphicon glyphicon-usd"></span> Amount</th>

											</tr>

											<tr
												style="background-color: white; color: black; text-align: center;"
												height="30px">

												<td><form:select path="productName"
														class="form-control" onchange="this.form.submit()"
														style="width: 130px;" id="batNo" name="batNo">
														<form:option value="None">--Select--</form:option>
														<form:options items="${productname}" required="required"
															autocomplete="off" />
													</form:select></td>
												<td><form:input path="batNo" class="form-control"
														required="required" value="${abc.batNo}" name="batNo"
														style=" width: 100px;" readonly="true" /></td>
												<td><form:input path="availQuty" class="form-control"
														required="required" readonly="true" value="${abc.avilQty}"
														name="batNo" style=" width: 100px;" /></td>
												<td><form:input path="mfgdate" class="form-control"
														required="required" value="${abc.mfgdate}" name="batNo"
														style=" width: 100px;" readonly="true" /></td>
												<td><form:input path="expdate" class="form-control"
														required="required" value="${abc.expdate}" name="batNo"
														style=" width: 100px;" readonly="true" /></td>
												<td><form:input path="salesQty" class="form-control"
														required="required" id="kx1" onchange="getValue()" min="1"
														max="${abc.avilQty}" name="batNo" style=" width: 100px;" /></td>
												<td><form:input path="utRate" class="form-control"
														required="required" readonly="true" value="${abc.utRate}"
														name="batNo" style=" width: 100px;" id="kx2" /></td>
												<td><form:input path="value" class="form-control"
														required="required" readonly="true" value="" name="batNo"
														style=" width: 100px;" id="kx3" /></td>
												<td><form:input path="discount" class="form-control"
														required="required" min="0" max="100" type="number"
														step="0.1" id="kx4" onchange="getsubDiscount()"
														name="batNo" style=" width: 100px;" /></td>
												<td><form:input path="amount" class="form-control"
														required="required" readonly="true" id="kx5" value=""
														name="batNo" style=" width: 100px;" /></td>
											</tr>
									</table>
								</div>
								<br>
								<br>
								<button type="submit" class="btn btn-info" name="add">
									<span class="glyphicon glyphicon-plus"></span> ADD
								</button>
							</c:forEach>
							<div class="bs-example"
								style="margin-top: 5%; width: 100% !important; overflow-x: scroll">
								<table class="table table-bordered">
									<thead>
										<tr style="background-color: #337ab7; color: #f9f8f8">

											<th style="width: 100px;"><span
												class="glyphicon glyphicon-list"></span> Pro.Name</th>
											<th style="width: 100px;"><span
												class="glyphicon glyphicon-calendar"></span> BatchNo</th>
											<th style="width: 100px;"><span
												class="glyphicon glyphicon-bookmark"></span> AvlQty</th>
											<th style="width: 100px;"><span
												class="glyphicon glyphicon-calendar"></span> MFG.Date</th>
											<th style="width: 100px;"><span
												class="glyphicon glyphicon-calendar"></span> Exp.Date</th>
											<th style="width: 100px;"><span
												class="glyphicon glyphicon-bookmark"></span> Sales.Qty</th>
											<th style="width: 100px;"><span
												class="glyphicon glyphicon-tags"></span> U.Rate</th>
											<th style="width: 100px;"><span
												class="glyphicon glyphicon-usd"></span> value</th>
											<th style="width: 100px;"><span
												class="glyphicon glyphicon-tags"></span> Disc(%)</th>
											<th style="width: 100px;"><span
												class="glyphicon glyphicon-usd"></span> Amount</th>
											<th style="width: 100px;"><span
												class="glyphicon glyphicon-trash"></span> Delete</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach items="${getAddingProductDetails}" var="abc">
											<tr>

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
												<td><a class="btn btn-info"
													href="deleteSalesdetails.html?salesid=${abc.salesid}"><span
														class="glyphicon glyphicon-trash"></span></a></td>

											</tr>
										</c:forEach>
								</table>
							</div>


							<div class="row">
								<div class="col-xs-3"></div>
								<div class="col-xs-6" style="margin-left: -2%">
									<div class="col-xs-4" style="padding-top: 7%">
										<form:label path="billStatus">Bill Type</form:label>
									</div>
									<div class="col-xs-6" style="padding-top: 7%">
										<form:radiobuttons path="billStatus" items="${billStatus}"
											required="required"></form:radiobuttons>
									</div>
								</div>
								<div class="col-xs-3"></div>
							</div>
							<div class="row">
								<div class="col-xs-3"></div>
								<div class="col-xs-6">
									<form:label path="totalAmount">Total Amount</form:label>
									<form:input path="totalAmount" required="required"
										value="${totalAmount[0]}" id="sud1" readonly="true"
										class="form-control" />
								</div>
								<div class="col-xs-3"></div>
							</div>

							<div class="row">
								<div class="col-xs-3"></div>
								<div class="col-xs-6">
									<form:label path="avgDiscount">Average Discount</form:label>
									<form:input path="avgDiscount" required="required" min="0"
										max="100" type="number" step="0.01" id="sud2"
										onchange="getsubDiscount1()" class="form-control" />
								</div>
								<div class="col-xs-3"></div>
							</div>
							<div class="row">
								<div class="col-xs-3"></div>
								<div class="col-xs-6">

									<form:label path="netTotal">Net Total</form:label>
									<form:input path="netTotal" required="required" type="number"
										step="0.01" id="kx7" value="" class="form-control"
										readonly="true" />
								</div>
								<div class="col-xs-3"></div>
							</div>

							<div class="row">
								<div class="col-xs-3"></div>
								<div class="col-xs-6">

									<form:label path="cashRecived">Cash Received</form:label>
									<form:input path="cashRecived" required="required"
										type="number" step="0.01" id="kx8" onchange="cashChange()"
										min="1" class="form-control" />
								</div>
								<div class="col-xs-3"></div>
							</div>
							<div class="row">
								<div class="col-xs-3"></div>
								<div class="col-xs-6">


									<form:label path="remainingCharge">Remaining Change</form:label>
									<form:input path="remainingCharge" required="required"
										type="number" step="0.01" id="kx9" value=""
										class="form-control" readonly="true" />
								</div>
								<div class="col-xs-3"></div>
							</div>
							<div class="row">
								<div class="col-xs-3"></div>
								<div class="col-xs-6" style="margin-top: 3%; margin-bottom: 3%"
									align="center">
									<button type="submit" class="btn btn-info" name="total">
										<span class="glyphicon glyphicon-save"></span> Save
									</button>

									<button class="btn btn-info">
										<a style="color: white; text-decoration: none"
											href="closeSalesEntrydetails.html"> <span
											class="glyphicon glyphicon-remove"> </span> Close
										</a>
									</button>



									<!-- 	 <a href=".html" class="btn btn-info" class="glyphicon glyphicon-remove">close -->
									<!--      </a> -->
								</div>
								<div class="col-xs-3"></div>
							</div>





						</div>
					</div>

				</div>
	</form:form>

</body>
</html>
