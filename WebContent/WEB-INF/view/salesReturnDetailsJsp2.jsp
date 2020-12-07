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
		ansD.value = (val1) - (((val2 / 100) * (val1)));
	}
</script>


<script language="javascript">
	function getsubDiscount1() {
		var val1 = parseInt(document.getElementById("sud1").value);
		var val2 = parseInt(document.getElementById("sud2").value);
		var ansD = document.getElementById("kx10");
		ansD.value = (val1) - (((val2 / 100) * (val1)));
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
							action="getProductdetailsSalesReturnsName.html">

							<div class="panel-body"
								>
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
							
									<div class="col-xs-6">
										<label>Billing Type</label>
										<form:input path="billingType" required="required"
											class="form-control" value="${xyz.billingType}" />
									</div>
								</div>

								<div class="row">
									<div class="col-xs-6">

										<form:label path="salesDate">Sales Date</form:label>
										<form:input path="salesDate" required="required"
											class="form-control" value="${xyz.salesDate}" />

									</div>
								
									<div class="col-xs-6">
										<label>Sales Type:</label>
										<form:input path="salesType" required="required"
											class="form-control" value="${xyz.salesType}" />
									</div>
								</div>
							
						</form:form>
					</c:forEach>

					<form:form modelAttribute="salesEntryPojo" method="post"
						action="getProductdetailsSalesReturns.html?name=${customerParticularName[0]}">


						<div class="bs-example" style="padding-top: 5% ;width:100%  !important;overflow-x: scroll">
							<c:forEach items="${productRelatedDetails}" var="abc">
								<table class="table table-bordered">
									<thead>
										<tr style="background-color: #337ab7; color: #f9f8f8">
											<th><span class="glyphicon glyphicon-list-alt"></span> Pr.Name</th>
												<th><span class="glyphicon glyphicon-list"></span> BatNo</th>
												<th><span class="glyphicon glyphicon-list-alt"></span> Avl.Qty</th>
												<th><span class="glyphicon glyphicon-calendar"></span> MFG.Dt</th>
												<th><span class="glyphicon glyphicon-calendar"></span> EXP.Dt</th>
												<th><span class="glyphicon glyphicon-list-alt"></span> Pd.Qty</th>
												<th><span class="glyphicon glyphicon-tags"></span> U.Rate</th>
												<th><span class="glyphicon glyphicon-usd"></span> Value</th>
												<th><span class="glyphicon glyphicon-usd"></span> Disc(%)</th>
												<th><span class="glyphicon glyphicon-usd"></span> Amount</th>
										</tr>
										<tr
											style="background-color: white; color: black; text-align: center;"
											height="30px">

											<td><form:select  path="productName" class="form-control"
													onchange="this.form.submit()"  style="width: 130px;"
													id="batNo" name="batNo">
													<form:option value="None" class="form-control">--Select--</form:option>
													<form:options items="${productname}" required="required"
														autocomplete="off" />
												</form:select></td>
											<td  style="width: 100px;"><form:input  style="width: 100px;" path="batNo" required="required"
													class="form-control" value="${abc.batNo}" readonly="true" /></td>
											<td  style="width: 130px;"><form:input  style="width: 100px;" path="availQuty" required="required"
													readonly="true" value="${abc.avilQty}" class="form-control" /></td>
											<td style="width: 130px;"><form:input  style="width: 100px;" path="mfgdate" required="required"
													class="form-control" value="${abc.mfgdate}" readonly="true" /></td>
											<td style="width: 130px;"><form:input style="width: 100px;"  path="expdate" required="required"
													class="form-control" readonly="true" value="${abc.expdate}" /></td>
											<td style="width: 130px;"><form:input style="width: 100px;"  path="salesQty" required="required"
													id="kx1" class="form-control" onchange="getValue()" type="number" min="1" max="${qty[0]}" value="${qty[0]}"/></td>
											<td style="width: 130px;"><form:input style="width: 100px;"  path="utRate" required="required"
													readonly="true" value="${abc.utRate}" id="kx2"
													class="form-control" /></td>
											<td style="width: 130px;"><form:input style="width: 100px;"  path="value" required="required"
													class="form-control" readonly="true" value="" id="kx3" /></td>
											<td style="width: 130px;"><form:input  style="width: 100px;" path="discount" required="required"
													type="number" step="0.1" id="kx4"
													onchange="getsubDiscount()" class="form-control" min="0" 
													max="100" /></td>
											<td style="width: 130px;"><form:input  style="width: 100px;"  path="amount" required="required"
													class="form-control" readonly="true" id="kx5" value="" /></td>
										</tr>
								</table>



								




								<!-- <input type="submit" value="ADD" name="add"> -->
							</c:forEach>
						</div>
						<br>
						<br>
						<button type="submit" class="btn btn-info" name="add">
									<span class="glyphicon glyphicon-plus"></span>ADD
								</button>
						<div class="bs-example" style="padding-top: 5% ;width:100%  !important;overflow-x: scroll">
							<table class="table table-bordered">
								<thead>
									<tr style="background-color: #337ab7; color: #f9f8f8">
											<th><span class="glyphicon glyphicon-list-alt"></span> Pr.Name</th>
												<th><span class="glyphicon glyphicon-list"></span> BatNo</th>
												<th><span class="glyphicon glyphicon-list-alt"></span> Avl.Qty</th>
												<th><span class="glyphicon glyphicon-calendar"></span> MFG.Dt</th>
												<th><span class="glyphicon glyphicon-calendar"></span> EXP.Dt</th>
												<th><span class="glyphicon glyphicon-list-alt"></span> Pd.Qty</th>
												<th><span class="glyphicon glyphicon-tags"></span> U.Rate</th>
												<th><span class="glyphicon glyphicon-usd"></span> Value</th>
												<th><span class="glyphicon glyphicon-usd"></span> Disc(%)</th>
												<th><span class="glyphicon glyphicon-usd"></span> Amount</th>
												<th><span class="glyphicon glyphicon-trash"></span> Delete</th>
									</tr>
								</thead>
								<c:forEach items="${getAddingProductDetails}" var="abc">
									<tr
										style="background-color: white; color: black; text-align: center;"
										height="30px">

										<td style="width: 130px;"><c:out value="${abc.productName}" /></td>
										<td style="width: 130px;"><c:out value="${abc.batNo}" /></td>
										<td style="width: 130px;"><c:out value="${abc.availQuty}" /></td>
										<td style="width: 130px;"><c:out value="${abc.mfgdate}" /></td>
										<td style="width: 130px;"><c:out value="${abc.expdate}" /></td>
										<td style="width: 130px;"><c:out value="${abc.salesQty}" /></td>
										<td style="width: 130px;"><c:out value="${abc.utRate}" /></td>
										<td style="width: 130px;"><c:out value="${abc.value}" /></td>
										<td style="width: 130px;"><c:out value="${abc.discount}" /></td>
										<td style="width: 130px;"><c:out value="${abc.amount}" /></td>
										<%-- 	<td><a href="delete.html?salesReturnsid=${abc.salesReturnsid}">Delete</a></td> --%>
<td><a class="btn btn-info"
													href="deleteSalesRetursListDetails.html?salesReturnsid=${abc.salesReturnsid}"><span class="glyphicon glyphicon-trash"></span></a></td>
									</tr>
								</c:forEach>
							</table>
						</div>
						<div class="row">
							<div class="col-xs-3"></div>
							<div class="col-xs-6">
								<form:label path="totalAmount">Total Amount</form:label>
								<form:input path="totalAmount" required="required"
									value="${totalAmount[0]}" id="sud1" readonly="true"
									class="form-control" />
							</div><div class="col-xs-3"></div>
						</div>
						<div class="row">
							<div class="col-xs-3"></div>
							<div class="col-xs-6">

								<form:label path="avgDiscount">Average Discount</form:label>
								<form:input path="avgDiscount" required="required" type="number" min="0" max="99"
									step="0.01" id="sud2" onchange="getsubDiscount1()"
									class="form-control" />

							</div><div class="col-xs-3"></div>
						</div>
						<div class="row">
							<div class="col-xs-3"></div>
							<div class="col-xs-6">
								<form:label path="netTotal">Net Total</form:label>
								<form:input path="netTotal" required="required" type="number"
									step="0.01" id="kx10" class="form-control" value="" />
							</div><div class="col-xs-3"></div>
						</div>
						<div class="row">
							<div class="col-xs-3"></div>
							<div class="col-xs-6">
								<form:label path="returnAmount">Return Amount</form:label>
								<form:input path="returnAmount" required="required"
									class="form-control" type="number" step="0.01" value="" />
							</div><div class="col-xs-3"></div>
						</div>
					<div class="row" style="padding-top: 5%; padding-bottom: 5%">
									<center>
										<button type="submit" class="btn btn-info" name="total">
											<span class="glyphicon glyphicon-save"></span>Save
										</button>

										<a href="cancessalesReturnsdetails.html" class="btn btn-info"><span
											class="glyphicon glyphicon-remove"></span>Cancel</a>
									</center>
								</div>
								
							</form:form>
							
				</div>
			</div>
		</div>
	</div>

</body>
</html>
