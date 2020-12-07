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


<script language="javascript">
	function avgDiscount() {
		var val1 = parseInt(document.getElementById("kx11").value);
		var val2 = parseInt(document.getElementById("kx12").value);
		var ansD = document.getElementById("kx10");
		ansD.value = (val1) - ((val2/100)*val1);
	}
</script>

<script language="javascript">
	function cashChange() {
		var val1 = parseInt(document.getElementById("kx7").value);
		var val2 = parseInt(document.getElementById("kx8").value);
		var ansD = document.getElementById("kx9");
		ansD.value = val2 - val1;
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
		ansD.value = (val1) - (((val2 / 10) / (val1)) * 100);
	}
</script>



</head>
<body>




	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label> Sales Return</label>
					</div>

					<c:forEach items="${salesEntryPojogettingnames}" var="xyz">
						<form:form modelAttribute="salesEntryPojo" method="post"
							action="getProductdetailsName234.html">

							<div class="panel-body"
								style="padding-left: 10%; padding-right: 10%">
								<div class="row">
									<div class="col-xs-6">
										<label for="lname">Customer Name</label>
										<form:select path="name" onchange="this.form.submit()"
											class="form-control">
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
											<form:option value="None" class="form-control">${xyz.billingType}</form:option>
											<form:options items="${billingType}" required="required"
												autocomplete="off" />
										</form:select>
									</div>
								</div>

								<div class="row">
									<div class="col-xs-6">

										<form:label path="salesDate">Sales Date</form:label>
										<form:input path="salesDate" required="required"
											class="form-control" value="${xyz.salesDate}" type="date" />

									</div>
								</div>
								<div class="row">
									<div class="col-xs-6">
										<label>Sales Type:</label>
										<form:select path="salesType" class="form-control">
											<form:option value="None">${xyz.salesType}</form:option>
											<form:options items="${salesType}" required="required"
												autocomplete="off" />
										</form:select>
									</div>
								</div>
							</div>
						</form:form>
					</c:forEach>

					<form:form modelAttribute="salesEntryPojo" method="post"
						action="getProductdetails234.html?name=${customerParticularName[0]}">

						<div class="bs-example" style="padding-top: 5%">
							<%-- <c:forEach items="${productRelatedDetails}" var="abc"> --%>
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

										<td><form:select path="productName"
												onchange="this.form.submit()">
												<form:option value="None">--Select--</form:option>
												<form:options items="${productname}" required="required"
													class="form-control" autocomplete="off" />
											</form:select></td>

										<td><form:input path="batNo" required="required"
												class="form-control" /></td>
										<td><form:input path="availQuty" required="required"
												readonly="true" value="${abc.avilQty}" class="form-control" /></td>
										<td><form:input path="mfgdate" required="required"
												type="date" class="form-control" /></td>
										<td><form:input path="expdate" required="required"
												type="date" class="form-control" /></td>
										<td><form:input path="salesQty" required="required"
												id="kx1" class="form-control" onchange="getValue()" /></td>
										<td><form:input path="utRate" required="required"
												readonly="true" value="${abc.utRate}" id="kx2"
												class="form-control" /></td>
										<td><form:input path="value" required="required"
												readonly="true" value="" id="kx3" class="form-control" /></td>
										<td><form:input path="discount" required="required"
												type="number" step="0.1" id="kx4"
												onchange="getsubDiscount()" class="form-control" /></td>
										<td><form:input path="amount" required="required"
												readonly="true" id="kx5" value="" class="form-control" /></td>
									</tr>
							</table>

							<input type="submit" value="ADD" name="add">
							<%-- </c:forEach> --%>
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
									value="${totalAmount[0]}" id="kx11" readonly="true"
									class="form-control" />
							</div>
						</div>
						<div class="row">
							<div class="col-xs-6"></div>
							<div class="col-xs-6">

								<form:label path="avgDiscount">Average Discount</form:label>
								<form:input path="avgDiscount" required="required" type="number"
									class="form-control" step="0.01" id="kx12"
									onchange="avgDiscount()" />

							</div>
						</div>
						<div class="row">
							<div class="col-xs-6"></div>
							<div class="col-xs-6">
								<form:label path="netTotal">Net Total</form:label>
								<form:input path="netTotal" required="required" type="number"
									class="form-control" step="0.01" id="kx10" value="" />

							</div>
						</div>
						<div class="row">
							<div class="col-xs-6"></div>
							<div class="col-xs-6">
								<form:label path="returnAmount">Return Amount</form:label>
								<form:input path="returnAmount" required="required"
									type="number" class="form-control" step="0.01" value=""/>
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
