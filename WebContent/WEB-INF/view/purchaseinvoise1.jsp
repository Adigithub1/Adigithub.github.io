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
<title>Purchase Invoise</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
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
</head>
<body>
<form:form modelAttribute="purchaseInvoiceePojo" method="post"
		action="getProductdetails.html">
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Purchase Invoise</label>
					</div>
					<div class="panel-body"  style="padding-left:10%;padding-right:10%">
				<div class="row">
							
					<div class="col-xs-6">
                           <label for="lname">Supplier Name</label>
                           <form:select path="supplierName"
						onchange="this.form.submit()" required="required" class="form-control">
						<form:option value="None" class="form-control">--Select--</form:option>
						<form:options items="${supplierNameDb}" 
							autocomplete="off" />
					</form:select>		
                       <!--  <select class="form-control">
									<option>Shwetha</option>
									<option>Shwetha</option>
									
								</select> -->
                       
							</div>	
					<%-- <div class="col-xs-6">
							
                           <label for="lname">Supplier Code</label>
                           <form:input path="address" required="required" value="${supplierAddress[0]}" class="form-control"/>
                      
							</div> --%>
							</div>
							<div class="row">
									
					<div class="col-xs-6">
								<label>Address</label> 
								
								<form:input path="address" required="required" value="${supplierAddress[0]}" class="form-control"
								readonly="true"   />
                                <!-- <input type="text" class="form-control" name="name"> -->
						</div>
							
									
					<div class="col-xs-6">
								<label>City</label> 
								<form:input path="city" required="required" value="${supplierCity[0]}" class="form-control" readonly="true" />
 <!-- <input type="text" class="form-control" name="name"> -->
						</div>
							</div>
							<div class="row">
									
					<div class="col-xs-6">
								<label>purchase Type</label> 
								
				  <form:select path="purchaseType" required="required" class="form-control" >
						<form:option value="None" class="form-control">--Select--</form:option>
						<form:options items="${purchaseType}" 
							autocomplete="off" />
					</form:select>
			
								
								
                                   <!--  <select class="form-control">
									<option>Cash</option>
									<option>Card</option>
									
								</select> -->
						</div>
							
									
					<div class="col-xs-6">
								<label>GRN Number</label> 
								<form:input path="grnNo" value="${grnNo[0]}" class="form-control"
						readonly="true" required="required"></form:input>
								
                           <!-- <input type="text" class="form-control" name="name"> -->
						</div>
						
						<div class="col-xs-6">
								<label>Invoice Number</label> 
								<form:input path="invoiceNo" required="required" class="form-control"/>
                           <!-- <input type="text" class="form-control" name="name"> -->
						</div>
							</div>
						
						<div class="row">
									
					<div class="col-xs-6">
								<label>Invoice Date</label> 
								
								<form:input path="invoiceDate" required="required" class="form-control"
						id="my1" />
 <!-- <input type="text" class="form-control" name="name"> -->
						</div>
							
							</div>
							<div class="row">
									
					<div class="col-xs-6">
									<label>Received Date </label> 
									<form:input path="recivedDate" required="required"
						id="my2" class="form-control" />
                    <!-- <input type="text" class="form-control" name="name"> -->
									
							
						</div>
							</div>
				

	 <div class="bs-example" style="padding-top:5%">
    <table class="table table-bordered">
        <thead>
            <tr style="    background-color: #337ab7;
    color: #f9f8f8">
               <!--  <th><span class="glyphicon glyphicon-list-alt"></span> Product ID</th> -->
                <th><span class="glyphicon glyphicon-user"></span> Product Name</th>
               <th><span class="glyphicon glyphicon-user"></span> Pack</th>
                <th><span class="glyphicon glyphicon-user"></span> Mnf.By</th>
                <th><span class="glyphicon glyphicon-user"></span> PK.Qty</th>
                <th><span class="glyphicon glyphicon-list-alt"></span> Batch Number</th>
                <th><span class="glyphicon glyphicon-user"></span> Mfg Date</th>
                <th><span class="glyphicon glyphicon-user"></span> Exp Date</th>
                <th><span class="glyphicon glyphicon-eye-open"></span> Qty</th>
                <th><span class="glyphicon glyphicon-trash"></span> Rate</th>
                <th><span class="glyphicon glyphicon-user"></span> Amount</th>
                <th><span class="glyphicon glyphicon-eye-open"></span> Mrp</th>
                <th><span class="glyphicon glyphicon-trash"></span> vat</th>
                 <th><span class="glyphicon glyphicon-trash"></span> FinalAmount</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${getProductDetails}" var="abc">
            <tr>
               <td><td><c:out value="${abc.productName}" /></td>
					<td><c:out value="${abc.pack}" /></td>
					<td><c:out value="${abc.manufacturingBy}" /></td>
					<td><c:out value="${abc.packQty}" /></td>
					<td><c:out value="${abc.batchNo}" /></td>
					<td><c:out value="${abc.mnfDate}" /></td>
					<td><c:out value="${abc.expDate}" /></td>
						<td><c:out value="${abc.qty}" /></td>
				<%-- 	<td><c:out value="${abc.free}" /></td> --%>
					<td><c:out value="${abc.rate}" /></td>
					<td><c:out value="${abc.amount}" /></td>
					<td><c:out value="${abc.mrp}" /></td>
					<td><c:out value="${abc.vat}" /></td>
					<td><c:out value="${abc.productFinalAmount}" /></td>
					<td><a href="delete.html?purchaseId=${abc.purchaseId}">Delete</a></td>

             
           
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
									<div class="col-xs-6">
		</div>
					<div class="col-xs-6">
								<label>NoOfIteams</label> 
								<form:input path="noOfitems" required="required" type="number" class="form-control"/>
						</div>
							</div>
						<div class="row">
		<div class="col-xs-6">
		</div>
							
					<div class="col-xs-6">
							
                           <label for="lname">Sub Total</label>
                            <form:input path="subTotal" required="required" type="number" class="form-control" step="0.01" id=""/>
                       
							</div>
							</div>
						
						
                <div class="row" style="padding-top:3%">
                <button style="margin-left:30%" type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-save"></span> Save
    </button>
   
     <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-remove"></span> Close
    </button>
              </div>      
                </div>
                
                 

      </div>
      
                            </div>
                            </div>
                            
                             </div>
                           
                           </form:form>
                             
                             </body>
                             
				
</html>                      