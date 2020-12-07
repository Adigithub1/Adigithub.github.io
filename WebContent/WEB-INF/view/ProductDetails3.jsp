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
<title>ProductDetail</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	function alphaOnly(txt, e) {
		var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz01234567890- ";
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
</head>
<body>
<c:forEach items="${model.update}" var="pd">
<form:form id="registerForm" modelAttribute="pd" method="post" action="updateProduct.html">
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label> Update Products</label>
					</div>
					<div class="panel-body"  style="padding-left:30%;padding-right:30%">
				        <div class="row">
						
								<label>Product Code</label>
								<form:input path="proCode" readonly="true" value="${pd.proCode}" class="form-control" />	
							</div>
					<div class="row">
						
								<label>ProductType Name</label>
								<form:select id="icon_prefix" path="proType" name="MyFormType2"  class="form-control">
								<form:option path="proType" value="${pd.proType}"  class="form-control"></form:option>
								<form:options path="proType" items="${model.MyFormType2}" /></form:select>		
							</div>
						<div class="row">
                           <label for="lname">Product Name</label>
                           <form:input path="proName" value="${pd.proName}" onkeypress="return alphaOnly(this, event)"  required="required"  maxlength="20" minlength="3" autocomplete="off" class="form-control"  />
                           
                            <!-- <input type="text" class="form-control" name="name"> -->
							</div>
						
							<div class="row">
						
								<label>Unit </label> 
								
								<form:select id="icon_prefix" path="proUnit" class="form-control" name="MyFormUnit2" >
								<form:option path="proUnit" value="${pd.proUnit}"  required="required" class="form-control"></form:option>
								<form:options path="proUnit" items="${model.MyFormUnit2}" />
								</form:select>
							</div>
							<div class="row">
						
								<label>Packing Type</label> 
								<form:select id="icon_prefix" path="packingType" class="form-control" name="MyFormPack2" >
								<form:option path="packingType" value="${pd.packingType}" required="required" ></form:option>
								<form:options path="packingType" items="${model.MyFormPack2}" /></form:select>
								
							</div>
					<div class="row">
						<label for="lname">Vat TAX</label>
						<form:select id="icon_prefix" path="vatTax" class="form-control" name="VATTAX" >
								<form:option path="vatTax" value="${pd.vatTax}" required="required"></form:option>
								<form:options path="vatTax" items="${model.VATTAX}" /></form:select>
						
								
							</div>
	<div class="row" >
						
							
                           <label for="lname">Manufactured By</label>
                           
                           <form:input path="manufacBy" onkeypress="return alphaOnly(this, event)"  required="required" maxlength="20" minlength="3" 
                            class="form-control" autocomplete="off" value="${pd.manufacBy}" />
							</div>
                <div class="row" style="padding-top:3%">
                <center>
                <button style="margin-left:30%" type="submit" Onclick="return confirmComplete();" class="btn btn-info">
      <span class="glyphicon glyphicon-refresh"></span> Update
    </button>
   
     <a  href="userListProductDetail.html" class="btn btn-info">
      <span  class="glyphicon glyphicon-remove"></span>Close</a></center>
              </div>      
                </div>
                
                 

      </div>
                            </div>
                            </div>
                            
                             </div>
                             </form:form>
                           </c:forEach>
                             
                             </body>
                             
				
</html>                      