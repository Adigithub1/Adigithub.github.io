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


</head>
<body>
<form:form modelAttribute="salesEntryPojo" method="post"
						action="getProductdetails789.html">
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Sales Entry1</label>
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
                       <form:select path="billingType" class="form-control">
										<form:option value="None" class="form-control" >--Select--</form:option>
										<form:options items="${billingType}" required="required"
											autocomplete="off" />
									</form:select>
						</div>
							</div>
							<div class="row">
									
					<div class="col-xs-6">
								<label>Sales Date</label> 
                            <form:input path="salesDate" required="required" id="my1"
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
										onchange="this.form.submit()" class="form-control">
										<form:option value="None" class="form-control">--Select--</form:option>
										<form:options items="${productname}" required="required" class="form-control"
											autocomplete="off" />
									</form:select></td>
              
              
              <td><form:input path="batNo" required="required" class="form-control" /></td>
              <td><form:input path="availQuty" required="required" class="form-control"
										type="number" /></td>
              
              <td><form:input path="mfgdate" required="required" class="form-control"  /></td>
								<td><form:input path="expdate" required="required" class="form-control"  /></td>
								<td><form:input path="salesQty" required="required" class="form-control"  /></td>
								<td><form:input path="utRate" required="required" class="form-control" 
										readonly="true" /></td>
								<td><form:input path="value" required="required" class="form-control" 
										readonly="true" /></td>
								<td><form:input path="discount" required="required" class="form-control" 
										type="number" step="0.1" /></td>
								<td><form:input path="amount" required="required" class="form-control" 
										readonly="true" /></td>
                
            </tr>
          
        </tbody>
        
         <button  type="Submit" class="btn btn-info">
      <span class="glyphicon glyphicon-plus"></span>Add
    </button>
    </table>
</div>
		
							<div class="row">
									<div class="col-xs-6">
		</div>
					<div class="col-xs-6">
								<label>Discount</label> 
 <input type="text" class="form-control" name="name">
						</div>
							</div>
						
					<div class="row">
									<div class="col-xs-6">
		</div>
					<div class="col-xs-6">
								<label>Vat Amount</label> 
 <input type="text" class="form-control" name="name">
						</div>
							</div>
						<div class="row">
		<div class="col-xs-6">
		</div>
							
					<div class="col-xs-6">
							
                           <label for="lname">Total</label>
                            <input type="text" class="form-control" name="name">
                       
							</div>
							</div>
						
						
                <div class="row" style="padding-top:3%">
                <button style="margin-left:30%" type="button" class="btn btn-info">
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