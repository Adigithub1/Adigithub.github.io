<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Patient Appointment</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
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
<script type="text/javascript">
        function Validate(txt) {
            txt.value = txt.value.replace(/[^a-zA-Z 0-9\n\r]+/g, '');
            
        }
    </script>
</head>
<body style="margin-top:10px">
<form:form id="registerForm" modelAttribute="h" method="post" action="saveHospitalform.html">
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Hospital Details</label>
					</div>
					<div class="panel-body">
					<div class="row">
					<div class="col-xs-6">
                            <form:label path="hostId">Hospital ID:</form:label>
								<form:input path="hostId" readonly="true" value="${model.maxId[0]}"
									class="form-control" />
									</div>
							<div class="col-xs-6">
							
                           <form:label path="hosptName">Hospital Name:</form:label>
								<form:input path="hosptName"
									onkeypress="return alphaOnly(this, event)" required="required"
									class="form-control" maxlength="50" minlength="3"
									autocomplete="off" />
                            </div>
                            
					</div>
					
						<div class="row">
							<div class="col-xs-6">
							
                           <form:label path="regFee">Registration Fee:</form:label>
								<form:input path="regFee" onkeypress="return isNumber(event)" maxlength="6"
									minlength="3" autocomplete="off" required="required"
									class="form-control" />
                            </div>
                           
                            <div class="col-xs-6">
							
                          <form:label path="fax">FAX:</form:label>
                           <form:input  path="fax" class="form-control"
										onkeypress="return OnlyFax(this, event)"
								maxlength="14" autocomplete="off" onpaste="return false"
								placeholder="0000-0000-0000" pattern=".{8,}" />
                       </div>
                       </div>
                       	<div class="row">
                          <div class="col-xs-6">
							
                          <form:label path="numBeds">Number of Beds:</form:label>
								<form:input path="numBeds" onkeypress="return isNumber(event)" maxlength="6"
									minlength="1" autocomplete="off" required="required"
									class="form-control" />
                            </div>
                        
                          
							<div class="col-xs-6">
							
                          <form:label path="hostNum">Hospital Number:</form:label>
                            <form:input path="hostNum" class="form-control"
									onkeypress="return isNumber(event)" maxlength="6"
									minlength="4" autocomplete="off" required="required"
									onpaste="return false" />
                            </div>
                      </div>
							<div class="row">
							<div class="col-xs-6">
							
                           <form:label path="email">Email</form:label>
									<form:input path="email"  class="form-control"
										placeholder="abc@gmail.com"
										pattern="^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$"
								onkeypress="myFunction()" type="email" id="myEmail" maxlength="50" 
								 
										autocomplete="off" />
                            </div>
                        
							<div class="col-xs-6">
							
                           <form:label path="director">Managing Director</form:label>
                            <form:input path="director" class="form-control"
										onkeypress="return alphaOnly(this, event)" required="required"
										maxlength="25" minlength="3" autocomplete="off"
										onpaste="return false" />
                            </div>
                            </div>
                        
                      
						
						
					
						<div class="row">
						<div class="col-xs-6">
							
                           <form:label path="establish">Year of Establishment:</form:label>
                            <form:input path="establish" class="form-control"
										onkeypress="return isNumber(event)" required="required"
										maxlength="4" minlength="4" autocomplete="off"
										onpaste="return false" />
                            </div>
					
							<div class="col-xs-6">
							
                           <form:label path="phNum1">Phone Number 1</form:label>
                            <form:input path="phNum1" class="form-control"
										onkeypress="return isNumber(event)" maxlength="11"
										minlength="10" autocomplete="off" required="required"
										onpaste="return false" />
                            </div>
                            </div>
                            	<div class="row">
							<div class="col-xs-6">
							
                          <form:label path="phNum2">Phone Numbe 2</form:label>
                            <form:input path="phNum2" class="form-control"
										onkeypress="return isNumber(event)" maxlength="11"
										minlength="10" autocomplete="off" 
										onpaste="return false" />
                            </div>
                            	
							<div class="col-xs-6">
							
                           <form:label path="phNum3">Phone Numbe 3</form:label>
                            <form:input path="phNum3" class="form-control"
										onkeypress="return isNumber(event)" maxlength="11"
										minlength="10" autocomplete="off" 
										onpaste="return false" />
                            </div>
                            </div>
                            	<div class="row">
							<div class="col-xs-6">
							
                           <form:label path="phNum4">Phone Number 4</form:label>
                            <form:input path="phNum4" class="form-control"
										onkeypress="return isNumber(event)" maxlength="11"
										minlength="10" autocomplete="off" 
										onpaste="return false" />
                            </div>
                               
                
                          <div class="col-xs-6">
                         
                            <div class="control-group">
                    <form:label path="address1">Address Line 1</form:label>
                    <div class="controls">
                        <form:input path="address1" class="form-control"
											autocomplete="off"  required="required" maxlength="100" placeholder="address line 1"
											minlength="3" />
                        <p class="help-block">Street address, P.O. box, company name, c/o</p>
                    </div>
                </div>
                </div>
                </div>
                
             	<div class="row">
               <div class="col-xs-6">
                
                <div class="control-group">
                     <form:label path="address2">Address Line 2</form:label>
                    <div class="controls">
                       <form:input path="address2" class="form-control"
											autocomplete="off"   required="required" maxlength="100" placeholder="address line 2" 
											minlength="3" />
                        <p class="help-block">Apartment, suite , unit, building, floor, etc.</p>
                    </div>
              
                </div>
                </div>
               
                <div class="col-xs-6">
                     <form:label path="city">City / Town</form:label>
                    <div class="controls">
							<form:input path="city" class="form-control" placeholder="city"  onkeypress="return alphaOnly(this, event)" 
											autocomplete="off" required="required" maxlength="20"
											minlength="3" />		
                        <p class="help-block"></p>
                    </div>
               </div>
               </div>
               	<div class="row">
                <div class="col-xs-6">
                 <div class="control-group">
                    <form:label path="pincode">Zip / Postal Code</form:label>
                    <div class="controls">
									 <form:input path="pincode" class="form-control"
										placeholder="zip or postal code"
                         onkeypress="return isNumber(event)" maxlength="6"
									minlength="6" autocomplete="off" required="required"/>
                        <p class="help-block"></p>
                    </div>
                </div>
                </div>
            
                <div class="col-xs-6">
                <div class="control-group">
                  <form:label path="state">State / Province / Region</form:label>
                    <div class="controls">
                        <form:input path="state" class="form-control"
										onkeypress="return alphaOnly(this, event)" required="required"
										maxlength="20" minlength="3" autocomplete="off"
										onpaste="return false" />                        <p class="help-block"></p>
                    </div>
                </div>
                </div>
            
             
                <div class="col-xs-6">
                 <div class="control-group">
                    <form:label path="country">Country</form:label>
                    <div class="controls">
                       <form:select path="country" class="form-control">
									<form:option path="country" value="none" class="form-control">----SelectCountry----</form:option>
									<form:options path="country" items="${model.contry}"></form:options>
									</form:select>
                    </div>
                    </div>
                    </div>
                  </div>
                 
                 
             
                  <div class="row">
               
        <div class="panel panel-primary" style="margin-top:3%;margin-bottom:-1.5%">
   <div class="panel-heading">
						<label>Contact</label>
					
   			
					</div>
							<div class="col-xs-6">
								<form:label path="contactPerson" >Contact Person</form:label>
									<form:input path="contactPerson"
									onkeypress="return alphaOnly(this, event)" required="required"
									class="form-control" maxlength="20" minlength="3"
									autocomplete="off" />
							</div>
							</div>
								<div class="row">
							<div class="col-xs-6">
							
                           <form:label path="admin">Promoted By</form:label>
                           <form:input path="admin"
									onkeypress="return alphaOnly(this, event)" required="required"
									class="form-control" maxlength="20" minlength="2"
									autocomplete="off" />
                            </div>
                            </div>
							
							<div class="col-xs-6">
							
                          <form:label path="contactPhNum">Mobile Number</form:label>
                            <form:input path="contactPhNum" class="form-control"
										onkeypress="return isNumber(event)" maxlength="11"
										minlength="10" autocomplete="off" required="required"
										onpaste="return false" />
                            </div>
                            
							
					    
               
               
                </div>
                 </div>
                 
              
                 <div class="row" style="margin-top:3%;margin-bottom:3%" align="center">
					  
                <button  type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-save"></span> Save
    </button>
   
    
									 <a  href="userListHospital.html" class="btn btn-info">
      <span  class="glyphicon glyphicon-remove"></span>Close</a>
              </div>  
                </div>
                
                </div>
                
                 
</div>
      </div>
                            </div>
                            </div>
                            
                             </div>
                             </div>
                             </div>
                             </div>
                             </div>
                             </div>
                          </form:form>
                             
                             </body>
                             
				
</html>                      

