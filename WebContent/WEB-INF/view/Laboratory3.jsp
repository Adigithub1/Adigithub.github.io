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
<title>Patient Appointment]</title>
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
<script>
function confirmComplete() {
	var answer=confirm("Are you sure you want to Update");
	if (answer==true)
	  {
	    return true;
	    alert("Successfully Updated");
	  }
	else
	  {
	    return false;
	  }
	}
	</script>
	<script type="text/javascript">
        function Validate(txt) {
            txt.value = txt.value.replace(/[^a-zA-Z 0-9\n\r]+/g, '');
            
        }
    </script>
</head>
<body>
<c:forEach items="${model.update}" var="lab">
		<form:form id="registerForm" modelAttribute="lab" method="post"
			action="updatelaboratoryform.html">

	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Laboratory Details</label>
					</div>
					
					<div class="panel-body">
					<div class="row">
					<div class="col-xs-6">
							
                          <form:label path="labId">Laboratory ID:</form:label>
								<form:input path="labId" readonly="true" value="${model.maxId[0]}"
									class="form-control" />
                            </div>
					
							<div class="col-xs-6">
							
                           <form:label path="labName">Laboratory Name:</form:label>
								<form:input path="labName"  value="${lab.labName}" 
									onkeypress="return alphaOnly(this, event)" required="required"
									class="form-control" maxlength="20" minlength="2"
									autocomplete="off" />
                            </div>
                            </div>
					
							<%-- <div class="col-xs-6">
							
                          
                            <form:label path="labNum">Laboratory Number:</form:label>
                            <form:input path="labNum" class="form-control" value="${lab.labNum}"  
									onkeypress="return isNumber(event)" maxlength="6"
									minlength="4" autocomplete="off" required="required"
									onpaste="return false" />
                            </div>
                            </div> --%>
                            <div class="row">
                            <div class="col-xs-6">
							
                          <form:label path="fax">FAX:</form:label>
                           <form:input  path="fax" class="form-control" value="${lab.fax}"
										onkeypress="return OnlyFax(this, event)" required="required"
								maxlength="14" autocomplete="off" onpaste="return false"
								placeholder="0000-0000-0000" pattern=".{8,}" />
                       </div>
                          <div class="col-xs-6">
							
                          <form:label path="establish">Year of Establishment:</form:label>
                            <form:input path="establish" class="form-control" value="${lab.establish}"  
										onkeypress="return isNumber(event)" required="required"
										maxlength="4" minlength="4" autocomplete="off"
										onpaste="return false" />
                            </div>
                          </div>
                            
							<div class="row">
							<div class="col-xs-6">
							
                           <form:label path="email">Email</form:label>
									<form:input path="email" name="myForm" value="${lab.email}"   class="form-control"
										 placeholder="abc@gmail.com"
										pattern="^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$"
								onkeypress="myFunction()" type="email" id="myEmail" maxlength="50"
								 
										autocomplete="off" required="required" />

                            </div>
                           
							<div class="col-xs-6">
							
                          
                           <form:label path="director">Managing Director</form:label>
                            <form:input path="director" class="form-control"
										onkeypress="return alphaOnly(this, event)" value="${lab.director}"   required="required"
										maxlength="25" minlength="3" autocomplete="off"
										onpaste="return false" />
                          
					</div>
					</div>
					  
							<div class="row">
							<div class="col-xs-6">
							
                          
                           <form:label path="phNum1">Phone Number 1</form:label>
                            <form:input path="phNum1" class="form-control"
										onkeypress="return isNumber(event)" value="${lab.phNum1}"   maxlength="11"
										minlength="10" autocomplete="off" required="required"
										onpaste="return false" />
                            </div>
                            
	
             
							<div class="col-xs-6">
							
                           
                           <form:label path="phNum2">Phone Number 2</form:label>
                            <form:input path="phNum2" class="form-control"
										onkeypress="return isNumber(event)"  value="${lab.phNum2}"  maxlength="11"
										minlength="10" autocomplete="off" required="required"
										onpaste="return false" />
                            </div>
                            
							
					    
                </div>
             
                
                <div class="row">
							<div class="col-xs-6">
							
                         
                           <form:label path="phNum3">Phone Number 3</form:label>
                            <form:input path="phNum3" class="form-control"
										onkeypress="return isNumber(event)" value="${lab.phNum3}"  maxlength="11"
										minlength="10" autocomplete="off" 
										onpaste="return false" />
                            </div>
                            
							
					    
              
                
         
							<div class="col-xs-6">
							
                           
                           <form:label path="phNum4">Phone Number 4</form:label>
                            <form:input path="phNum4" class="form-control"
										onkeypress="return isNumber(event)" value="${lab.phNum4}"  maxlength="11"
										minlength="10" autocomplete="off" 
										onpaste="return false" />
                            </div>
                            
							
					    
                </div>
             <div class="row">
                
               
                 
                          <div class="col-xs-6">
                         
                            <div class="control-group">
                   
                    <form:label path="address1">Address Line 1</form:label>
                    <div class="controls">
                        <form:input path="address1" class="form-control" value="${lab.address1}"   placeholder="address line 1"
											autocomplete="off" required="required" maxlength="100"
											minlength="3" />
                        <p class="help-block">Street address, P.O. box, company name, c/o</p>
                    </div>
                </div>
                </div>
                
             
               <div class="col-xs-6">
                
                <div class="control-group">
                   
                    <form:label path="address2">Address Line 2</form:label>
                    <div class="controls">
                       <form:input path="address2" class="form-control" value="${lab.address2}"   placeholder="address line 2" 
											autocomplete="off" required="required" maxlength="100"
											minlength="3" />
                        <p class="help-block">Apartment, suite , unit, building, floor, etc.</p>
                    </div>
              
                </div>
                </div>
                </div>
              
           
              
               
                  <div class="row">
                <div class="col-xs-6">
                   
                     <form:label path="city">City / Town</form:label>
                    <div class="controls">
							<form:input path="city" class="form-control" placeholder="city" value="${lab.city}"   onkeypress="return alphaOnly(this, event)" 
											autocomplete="off" required="required" maxlength="20"
											minlength="3" />		
                        <p class="help-block"></p>
                    </div>
               </div>
                <div class="col-xs-6">
                 <div class="control-group">
                    
                    <form:label path="pincode">Zip / Postal Code</form:label>
                    <div class="controls">
									 <form:input path="pincode"  value="${lab.pincode}"  class="form-control"
										placeholder="zip or postal code"
                         onkeypress="return isNumber(event)" maxlength="6"
									minlength="6" autocomplete="off" required="required"/>
                        <p class="help-block"></p>
                    </div>
                </div>
                </div>
               </div>
                 <div class="row">
                <div class="col-xs-6">
                <div class="control-group">
                 
                    <form:label path="state">State / Province / Region</form:label>
                    <div class="controls">
                        <form:input path="state" class="form-control" value="${lab.state}" placeholder="state"   
										onkeypress="return alphaOnly(this, event)" required="required"
										maxlength="25" minlength="3" autocomplete="off"
										onpaste="return false" />
                        <p class="help-block"></p>
                    </div>
                </div>
                </div>
                 <div class="col-xs-6">
                 <div class="control-group">
                    <form:label path="country">Country</form:label>
                    <div class="controls">
                       <form:select path="country"  value="${lab.country}"  class="form-control">
									<form:option path="country" value="${lab.country}"  class="form-control"></form:option>
									<form:options path="country"  value="${lab.country}" items="${model.contry}"></form:options>
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
					<div class="panel-body">
					<div class="row">
							<div class="col-xs-6">
								
								<form:label path="contactPerson" >Contact Person</form:label>
									
									<form:input path="contactPerson" value="${lab.contactPerson}"
									onkeypress="return alphaOnly(this, event)" required="required"
									class="form-control" maxlength="20" minlength="3"
									autocomplete="off" />
							</div>
							
							<div class="col-xs-6">
							
                           
                           <form:label path="promoter">Promoted By</form:label>
                           <form:input path="promoter"
									onkeypress="return alphaOnly(this, event)" value="${lab.promoter}"  required="required"
									class="form-control" maxlength="20" minlength="3"
									autocomplete="off" />

                            </div>
                            </div>
							<div class="row">
							<div class="col-xs-6">
                            <form:label path="contactPhNum">Phone Number</form:label>
                            <form:input path="contactPhNum"  value="${lab.contactPhNum}"  class="form-control"
										onkeypress="return isNumber(event)" maxlength="11"
										minlength="10" autocomplete="off" required="required"
										onpaste="return false" />
                            </div>
                            
							
					    
                </div>
              
               
                 <div class="row" style="margin-top:3%;margin-bottom:3%" align="center">
					  
                <button  type="submit" Onclick="return confirmComplete();"  class="btn btn-info">
      <span class="glyphicon glyphicon-refresh"></span> Update
    </button>
   
    <a  href="userListLaboratory.html" class="btn btn-info">
      <span  class="glyphicon glyphicon-remove"></span>Close</a>
              </div>  
                </div>
                
                </div>
                
                 
</div>
      </div>
                            </div>
                           <!--  </div>
                            
                             </div>
                             </div>
                             </div>
                             </div>
                             </div>
                             </div> -->
                          
                             </form:form>
                             </c:forEach>
                             </body>
                             
				
</html>                      