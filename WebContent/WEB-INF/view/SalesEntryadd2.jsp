<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Sales Entry</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/smoothness/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
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
		ansD.value = (val1) - (((val2/10) / (val1)) * 100);
	}
</script>

<script language="javascript">
	function cashChange() {
		var val1 = parseInt(document.getElementById("kx7").value);
		var val2 = parseInt(document.getElementById("kx8").value);
		var ansD = document.getElementById("kx9");
		ansD.value = val2-val1;
	}
</script>
<script language="javascript">
	function getValue() {
		var val1 = parseInt(document.getElementById("kx1").value);
		var val2 = parseInt(document.getElementById("kx2").value);
		var ansD = document.getElementById("kx3");
		ansD.value = val1*val2;
	}
</script>


<script language="javascript">
	function getsubDiscount() {
		var val1 = parseInt(document.getElementById("kx3").value);
		var val2 = parseInt(document.getElementById("kx4").value);
		var ansD = document.getElementById("kx5");
		ansD.value = (val1) - (((val2/10) / (val1)) * 100);
	}
</script>


<script>
	$(".datepicker1").datepicker('setDate', new Date());
</script>
<link rel="stylesheet" href="css/leave.css">
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>




<script>
        $(document).ready(function() {
            $("#my1").datepicker({
                dateFormat: "yy-mm-dd",
                changeMonth: true,
                changeYear: true,
                maxDate: "-1d",
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
                maxDate: "-1d",
                minDate: "-40Y",
                yearRange: "-40:+1"
            });
        });
  </script>
  <script>
        $(document).ready(function() {
            $("#my3").datepicker({
                dateFormat: "yy-mm-dd",
                changeMonth: true,
                changeYear: true,
                maxDate: "-1d",
                minDate: "-40Y",
                yearRange: "-40:+1"
            });
        });
  </script>
</head>
<body onload="myFunction()">
<form:form modelAttribute="salesEntryPojo" method="post"
						action="getProductdetails789.html">
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Sales Entry2</label>
					</div>
					<div class="panel-body"  style="padding-left:10%;padding-right:10%">
					<div class="row">
					<div class="col-xs-6">
							
                           <label for="CustomerId">Sales Id</label>
                     <form:input path="CustomerId" value="${customerId[0]}"
										readonly="true" required="required" class="form-control"></form:input>
                       
							</div>
				
				
							
					<div class="col-xs-6">
							
                           <label for="customerType">Customer Type</label>
                          	<%-- <form:radiobuttons path="customerType" items="${customerType}"required="required"
                          		class="form-control"></form:radiobuttons> --%>
                           
                           
                      <!--   <select class="form-control">
									<option>Shwetha</option>
									<option>Shwetha</option>
									
								</select> -->
                       
							</div>
							</div>
							<div class="row">
									
					<div class="col-xs-6">
								<label>Name</label> 
                     <form:input path="name" required="required"
										class="form-control" />
						</div>
										
					<div class="col-xs-6">
								<label>Billing Type</label> 
                       <form:select path="billingType" >
										<form:option value="None" >--Select--</form:option>
										<form:options items="${billingType}" required="required"
											autocomplete="off" />
									</form:select>
						</div>
							</div>
							<div class="row">
									
					<div class="col-xs-6">
								<label>Sales Date</label> 
                            <form:input path="salesDate" required="required" type="date" id="my1"
										class="form-control" />
						</div>
							
									
					<div class="col-xs-6">
								<label>Sales Type</label> 
                            <form:select path="salesType" class="form-control">
										<form:option value="None" class="form-control">--Select--</form:option>
										<form:options items="${salesType}" required="required"
											class="form-control" autocomplete="off" />
									</form:select>
						</div>
							</div>
						
						<!-- <div class="row">
									
					<div class="col-xs-6">
								<label>Invoice Date</label> 
 <input type="text" class="form-control" name="name">
						</div>
							
									
					<div class="col-xs-6">
								<label>Purchase Type</label> 
 <input type="text" class="form-control" name="name">
						</div>
							</div> -->
							<!-- <div class="row">
									
					<div class="col-xs-6">
									<label>Received Date </label> 
 <input type="text" class="form-control" name="name">
									
							
						</div>
							</div>
				 -->

	 <div class="bs-example" style="padding-top:5%">
	 <c:forEach items="${productRelatedDetails}" var="abc">
    <table class="table table-bordered">
        <thead>
            <tr style="background-color: #337ab7;
    color: #f9f8f8">
    
                                <td><span class="glyphicon glyphicon-list-alt"></span> ProductName</td>
								<td><span class="glyphicon glyphicon-list-alt"></span> batchNo</td>
								<td><span class="glyphicon glyphicon-list-alt"></span> AvailbleQuantity</td>
								<td><span class="glyphicon glyphicon-list-alt"></span> MFG Date</td>
								<td><span class="glyphicon glyphicon-list-alt"></span> Exp Date</td>
								<td><span class="glyphicon glyphicon-list-alt"></span> Sales Quantity</td>
								<td><span class="glyphicon glyphicon-list-alt"></span> U.Rate</td>
								<td><span class="glyphicon glyphicon-list-alt"></span> value</td>
								<td><span class="glyphicon glyphicon-list-alt"></span> Disc(%)</td>
								<td><span class="glyphicon glyphicon-list-alt"></span> Amount</td>
                
            </tr>
        </thead>
        <tbody>
            <tr>
              <td><form:select path="productName"
							onchange="this.form.submit()">
							<form:option value="None" class="form-control">--Select--</form:option>
							<form:options items="${productname}" required="required" class="form-control"
								autocomplete="off" />
						</form:select></td>

					<td><form:input path="batNo" required="required" class="form-control"/></td>
					<td><form:input path="availQuty" required="required" class="form-control"
							readonly="true" value="${abc.avilQty}" /></td>
					<td><form:input path="mfgdate" required="required" id="my2" class="form-control" /></td>
					<td><form:input path="expdate" required="required" id="my3" class="form-control" /></td>
					<td><form:input path="salesQty" required="required" id="kx1" class="form-control"
							onchange="getValue()" /></td>
					<td><form:input path="utRate" required="required" 
							readonly="true" value="${abc.utRate}" id="kx2" class="form-control" /></td>
					<td><form:input path="value" required="required" 
							readonly="true" value="" id="kx3" class="form-control" /></td>
					<td><form:input path="discount" required="required" 
							type="number" step="0.1" id="kx4" onchange="getsubDiscount()" class="form-control" /></td>
					<td><form:input path="amount" required="required" class="form-control"
							readonly="true" id="kx5" value="" /></td>
                
            </tr>
          
        </tbody>
 <button  type="Submit" class="btn btn-info">
      <span class="glyphicon glyphicon-plus"></span>Add
    </button>
    </table>
    </c:forEach>
</div>
		
		<table class="table table-bordered">
        <thead>
            <tr style="background-color: #337ab7;
    color: #f9f8f8">
    
                <td><span class="glyphicon glyphicon-list-alt"></span> ProductName</td>
				<td><span class="glyphicon glyphicon-list-alt"></span> batchNo</td>
				<td><span class="glyphicon glyphicon-list-alt"></span> AvailbleQuantity</td>
				<td><span class="glyphicon glyphicon-list-alt"></span> MFG Date</td>
				<td><span class="glyphicon glyphicon-list-alt"></span> Exp Date</td>
				<td><span class="glyphicon glyphicon-list-alt"></span> Sales Quantity</td>
				<td><span class="glyphicon glyphicon-list-alt"></span> U.Rate</td>
				<td><span class="glyphicon glyphicon-list-alt"></span> value</td>
				<td><span class="glyphicon glyphicon-list-alt"></span> Disc(%)</td>
				<td><span class="glyphicon glyphicon-list-alt"></span> Amount</td>
				<td><span class="glyphicon glyphicon-list-alt"></span> Delete</td>
                
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
					<td><a href="delete789.html?salesid=${abc.salesid}">Delete</a></td>

				</tr>
			</c:forEach>
          
        </tbody>
        <input type="submit" value="ADD" name="add">
    </table>
    
</div>
		
		
		<div class="row">
									<div class="col-xs-6">
		</div>
					<div class="col-xs-6">
								<label>Bill Type</label> 
 <form:radiobuttons path="billStatus" items="${billStatus}" 
						required="required"></form:radiobuttons>
						</div>
							</div>
						
					<div class="row">
									<div class="col-xs-6">
									
									<label>Total Amount</label> 
									<form:input path="totalAmount" required="required"
						value="${totalAmount[0]}" id="kx5" readonly="true" />
									
		                   </div>
					<div class="col-xs-6">
								<label>Average Discount</label> 
                      <form:input path="avgDiscount" required="required" class="form-control"
						type="number" step="0.01" id="kx6" onchange="avgDiscount()" />
						</div>
							</div>
						<div class="row">
		<div class="col-xs-6">
		</div>
							
					<div class="col-xs-6">
							
                           <label for="lname">Net Total</label>
                            
                       <form:input path="netTotal" required="required" class="form-control"
						type="number" step="0.01" id="kx7" value="" />
							</div>
							</div>
						<div class="col-xs-6">
							
                           <label for="cashRecived">Cash Recived</label>
                            
                       <form:input path="cashRecived" required="required" class="form-control"
						type="number" step="0.01" id="kx8" onchange="cashChange()" />
							</div>
							<div class="col-xs-6">
							
                           <label for="lname">Remaining Change</label>
                            
                       <form:input path="remainingCharge" required="required" class="form-control"
						readonly="true" type="number" step="0.01" id="kx9" value="" />
							</div>
						
                <div class="row" style="padding-top:3%">
                <button style="margin-left:30%" type="submit" class="btn btn-info" name="total">
      <span class="glyphicon glyphicon-save"></span> Save
    </button>
   
   <!--   <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-remove"></span> Close
    </button>
 -->              </div>      
                </div>
                
                 

      </div>
                            </div>
                            </div>
                            
                             </div>
                           </form:form>
                           
                             
                             </body>
                             
				
</html>                      