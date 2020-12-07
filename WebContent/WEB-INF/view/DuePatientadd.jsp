<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Product Type</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
<script language="javascript">
	function validateAmount() {
		var val1 = parseInt(document.getElementById("kx3").value);
		var val2 = parseInt(document.getElementById("kx4").value);
		if(val2 > val1 ){
			alert("Please enter valid paid amount");
			return false;
			}else{
				return true;
				}
		
	}
</script>
</head>
<body>
 <c:forEach items="${user}" var="user">
 <form:form id="user" modelAttribute="user" method="post" onsubmit="return validateAmount()"
				name="form1" action="updatepatient.html?id=${user.id}" >
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label> Edit Due Patient Details</label>
					</div>
					<div class="panel-body"  style="padding-left:30%;padding-right:30%">
				
					<div class="row">
						
								<label>Patient Name</label> 
								
								<form:input path="patname" id="patname" readonly="true" value="${user.patname}"
								 required="required"  class="form-control" 
								autocomplete="off" />
       
						
							</div>
							
							
							
							
							
						<div class="row">
							
					
							
                           <label for="lname">Age</label>
                           
                       <form:input path="age" id="age"  required="required" readonly="true" value="${user.age}"
								autocomplete="off" class="form-control" />
							
							</div>
							<div class="row">
						
								<label>Sex</label> 
								
								<form:input type="text" path="sex" id="sex" readonly="true" value="${user.sex}"
								required="required" autocomplete="off" class="form-control" />
						
							</div>
							<div class="row">
							
					
							
                           <label for="lname">Sale Date</label>
                           <form:input type="text" path="saledate" id="saledate" readonly="true" class="form-control"
                            value="${user.saledate}"></form:input>
                           
							</div>
							<div class="row">
							
					
							
                           <label for="lname">Total Amount</label>
                           
                           <form:input path="tamnt" readonly="true" class="form-control" value="${user.tamnt}"></form:input>
                           
                           
                           
                           <!--  <input type="text" class="form-control" name="name"> -->
                       
							
							</div>
							<div class="row">
							
					
							
                           <label for="lname">Due Amount</label>
                           <!--  <input type="text" class="form-control" name="name"> -->
                       
							<form:input path="dueamt" id="kx3" readonly="true" value="${user.dueamt}"
								autocomplete="off" class="form-control" />
							</div>
						
				
	<div class="row" >
						
							
                           <label for="lname">Paid Amount</label>
                            <!-- <input type="text" class="form-control" name="id"> -->
                         <form:input path="paidamnt" id="kx4"  value="${user.paidamnt}" class="form-control" 
                         type="number" min="1"/>
							
							
							</div>
                <div class="row" style="padding-top:3%">
                <button style="margin-left:30%" type="button" class="btn btn-info"  onclick="validateAmount()">
      <span class="glyphicon glyphicon-save"></span> Save
    </button>
   
     <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-remove"><a href=".html"></a></span> Close
    </button>
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