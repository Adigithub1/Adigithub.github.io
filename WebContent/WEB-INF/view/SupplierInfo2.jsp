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
<title></title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script>
	$(".datepicker1").datepicker('setDate', new Date());
</script>
  <link rel="stylesheet" href="css/leave.css">
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.datepicker.validation.js"></script>



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
  
<script type="text/javascript">
	function alphaOnly(txt, e) {
		var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ";
		var code;
		if (window.event)
			code = e.keyCode;
		else
			code = e.which;
		var char = keychar = String.fromCharCode(code);
		if (arr.indexOf(char) == -1)
		{
			
			alert("Please enter only characters.");
			return false;
			}

	}
</script>
<script type="text/javascript">

   function isNumber(evt) {
        evt = (evt) ? evt : window.event;
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
            alert("Please enter only Numbers.");
            return false;
        }

        return true;
    }
   </script>
    <script>
	function myFunction() {
		var x = document.getElementById("MyEmail").pattern;
		document.getElementById("demo").innerHTML = x;
	}
</script>
<script type="text/javascript">
        function Validate(txt) {
            txt.value = txt.value.replace(/[^a-zA-Z 0-9\n\r]+/g, '');
            
        }
    </script>
    <script type="text/javascript">
	function OnlyFax(txt, e) {
		var arr = "0123456789-+";
		var code;
		if (window.event)
			code = e.keyCode;
		else
			code = e.which;
		var char = keychar = String.fromCharCode(code);
		if (arr.indexOf(char) == -1)
			return false;

	}
</script>
</head>
<body style="margin-top:10px">
<form:form id="registerForm" modelAttribute="s" method="post" action="saveUser1SupplierInfo.html" >
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label> New Supplier Information</label>
					</div>
					<div class="panel-body">
					<div class="row">
							<div class="col-xs-6">
							
                           <label for="lname">Supplier Name</label>
                            <form:input type="text" path="supName" onkeypress="return alphaOnly(this, event)" required="required" class="form-control" 
                             maxlength="20" minlength="3" autocomplete="off" />
                            </div>
							
							<div class="col-xs-6">
							  <label for="lname">Supplier Code</label>
                            <input type="text" class="form-control" name="supCode" readonly="true" value="${model.maxId[0]}"  >
							</div>
							</div>
					
						<div class="row">
							
							<div class="col-xs-6">
							         <label for="supType">Supplier Type:</label>
							      
								<form:select id="icon_prefix" path="supType"  name="card" required="required" class="form-control">
								<form:option path="supType" value="" required="required" class="form-control">----Select---</form:option>
								<form:options path="supType" items="${model.syptype}" class="form-control"/></form:select>
							
							</div>
							<div class="col-xs-6">
							
                           <label for="lname">Mobile No</label>
                           <form:input path="phNum" class="form-control" 
                           onkeypress="return isNumber(event)" maxlength="11" minlength="10"
							autocomplete="off" required="required" onpaste="return false"  />
							</div>
							</div>
					       <div class="row">
							<div class="col-xs-6">
							
                           <label for="lname">Contact Person</label>
                           <form:input path="contactPerson" class="form-control" onkeypress="return alphaOnly(this, event)" required="required"
                           maxlength="20" minlength="3" autocomplete="off"
							onpaste="return false" />
                            <!-- <input type="text" class="form-control" name="Patient Name"> -->
                            </div>
							
							<div class="col-xs-6">
							  <label for="lname">Phone No(Contact Person)</label>
							  <form:input path="contPhNum"  class="form-control"
							  onkeypress="return isNumber(event)" maxlength="11" minlength="10"
							autocomplete="off" required="required" onpaste="return false"  />

                           <!--  <input type="text" class="form-control" name="Patient Name"> -->
							</div>
							</div>
							<div class="row">
							<div class="col-xs-6">
							
                           <label for="lname">Area</label>
                           
                           <form:input path="area" class="form-control" 
                          onkeypress="return alphaOnly(this, event)" required="required"
							maxlength="20" minlength="3" autocomplete="off"
							onpaste="return false" />
                            <!-- <input type="text" class="form-control" name="Patient Name"> -->
                            </div>
							
							<div class="col-xs-6">
							  <label for="lname">City</label>
							  <form:input path="city" class="form-control" 
							  onkeypress="return alphaOnly(this, event)" required="required"
							maxlength="20" minlength="3" autocomplete="off"
							onpaste="return false"   />
                            <!-- <input type="text" class="form-control" name="Patient Name">
 -->							</div>
							</div>
							<div class="row">
							<div class="col-xs-6">
							
                           <label for="lname">State</label>
                            <form:input path="state" class="form-control" 
                            onkeypress="return alphaOnly(this, event)" required="required"
							maxlength="20" minlength="3" autocomplete="off"
							onpaste="return false" />
                           
                            <!-- <input type="text" class="form-control" name="Patient Name"> -->
                            </div>
							
							<div class="col-xs-6">
							  <label for="lname">Country</label>
							  
							  <form:input path="country" class="form-control" 
							  onkeypress="return alphaOnly(this, event)" required="required"
							maxlength="20" minlength="3" autocomplete="off"
							onpaste="return false" />
							  
                           <!--  <input type="text" class="form-control" name="Patient Name"> -->
							</div>
							</div>
							<div class="row">
							<div class="col-xs-6">
							
                           <label for="lname">Pincode</label>
                           
                           <form:input path="pincode" class="form-control" 
                           onkeypress="return isNumber(event)" maxlength="6" minlength="6"
							autocomplete="off" required="required" onpaste="return false" />
                           <!--  <input type="text" class="form-control" name="Patient Name"> -->
                            </div>
							
							<div class="col-xs-6">
							  <label for="lname">Fax</label>
							  <form:input path="fax" class="form-control"  onkeypress="return OnlyFax(this, event)" 
								maxlength="14" autocomplete="off" onpaste="return false"
								placeholder="0000-0000-0000" pattern=".{8,}" />
                           <!--  <input type="text" class="form-control" name="Patient Name"> -->
							</div>
							</div>
							
    <div class="row">
     <div class="col-xs-6">
                   <div class="form-group">
     <label for="lname">Address</label>
     <form:input path="address" class="form-control" autocomplete="off"  required="required" maxlength="100" minlength="3" />
    <!-- <textarea class="form-control" id="exampleTextarea" rows="3" name="treatment for"></textarea> -->
  </div>
  </div>
                      <div class="col-xs-6">
							
                           <label for="lname">Email</label>
                           <form:input path="email"   class="form-control" placeholder="abc@gmail.com"
										pattern="^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$"
								onkeypress="myFunction()" type="email" id="myEmail" maxlength="50" 
								 
										autocomplete="off" 
                            />
                            
                            </div>
               
                
                </div>
 
						
							
						<div class="row">
							<div class="col-xs-6">
							
                           <label for="lname">Agreement No</label>
                           <form:input path="aggtNum" class="form-control" 
                           onkeyup = "Validate(this)" maxlength="10" minlength="3"
							autocomplete="off" required="required" onpaste="return false"  />
                           
                           <!--  <input type="text" class="form-control" name="phone number"> -->
                            </div>
                            <div class="col-xs-6">
							<label for="lname" >Agreement Date</label>
								<div class="input-append date form_datetime">
								<form:input path="aggtDate" id="my1" class="form-control" placeholder="YYYY-MM-DD" autocomplete="off" required="required"
								 />
									<!-- <input   type="date" class="form-control" name="apointment"> -->
									
								</div>
								</div>
                            </div>
                      <div class="row">
							<div class="col-xs-6">
							
                           <label for="lname">CST Reg.No</label>
                           <form:input path="cstNum" class="form-control"  
                           onkeyup = "Validate(this)" maxlength="11" minlength="11"
							autocomplete="off" required="required" onpaste="return false" />
                            <!-- <input type="text" class="form-control" name="Patient Name"> -->
                            </div>
							
							<div class="col-xs-6">
							  <label for="lname">AP GST No</label>
							  <form:input path="apNum" class="form-control" 
							  onkeyup = "Validate(this)" maxlength="15" minlength="15"
							autocomplete="off"  onpaste="return false"/>
                          <!--   <input type="text" class="form-control" name="Patient Name"> -->
							</div>
							</div>
						
                          <div class="row">
                      <div class="col-xs-6">
							
                           <label for="lname">TIN No</label>
                           <form:input path="tinNum" class="form-control" 
                            onkeypress="return isNumber(event)" maxlength="11" minlength="11"
							autocomplete="off" onpaste="return false" />
                            <!-- <input type="text" class="form-control" name="phone number"> -->
                            </div>
                <div class="col-xs-6">
                   <div class="form-group">
     <label for="lname">Remarks</label>
     <form:input path="remarks" class="form-control" onkeypress="return alphaOnly(this, event)" 
     maxlength="20" minlength="3" autocomplete="off"
      />
    <!-- <textarea class="form-control" id="exampleTextarea" rows="3" name="treatment for"></textarea> -->
  </div>
  </div>
  
                
                </div>
                <div class="row" style="padding-top:3%;">
                <center>
                <button   onClick="validate()" type="Submit" class="btn btn-info">
      <span class="glyphicon glyphicon-save"></span> Save
    </button>
   <a  href="userListSupplier.html" class="btn btn-info">
      <span  class="glyphicon glyphicon-remove"></span>Close</a></center>
              </div>  
               
              
                </div>
                </div>
                </div>
                 

      </div>
                            </div>
                           
                             </form:form>
                             </body>
                             
				
</html>                      