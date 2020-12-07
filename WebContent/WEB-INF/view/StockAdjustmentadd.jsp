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
<title>stock</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
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
</head>
<body style="margin-top:10px">
<c:forEach items="${user}" var="user">
<form:form id="user" modelAttribute="user" method="post"
				name="form1" action="updateStock.html?id=${user.id}"
				onsubmit="return formsubmit()">
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label> Stock Adjustment</label>
					</div>
					<div class="panel-body"  style="padding-left:30%;padding-right:30%">
				
					<div class="row">
						
								<label>Product Code</label> 
      <!--  <input type="text" class="form-control" name="name"> -->
		<form:input path="prcode" id="prcode" readonly="true" value="${user.prcode}"
								 required="required"  class="form-control" 
								autocomplete="off" />				
							</div>
						<div class="row">
							
					
							
                           <label for="lname">Product Name</label>
                            <form:input path="prname" id="prname"  required="required" readonly="true" value="${user.prname}"
								autocomplete="off" class="form-control" />
                       
							
							</div>
							<div class="row">
							
					
							
                           <label for="lname">UOM</label>
                           <form:input type="text" path="uom" id="uom" readonly="true" value="${user.uom}"
								required="required" autocomplete="off" class="form-control" />
                           <!--  <input type="text" class="form-control" name="name"> -->
                       
							
							</div>
							<div class="row">
							
					
							
                           <label for="lname">Batch No</label>
                           
                       <form:input type="text" path="bno" id="bno" class="form-control" readonly="true" value="${user.bno}"></form:input>
							
							</div>
							<div class="row">
							
					
							
                           <label for="lname">Exp Dt</label>
                           
                       <form:input path="expdate" readonly="true" value="${user.expdate}"
								autocomplete="off" class="form-control" />
							
							</div>
						
				
	<div class="row" >
						
							
                           <label for="lname">Modify Qty</label>
                            
                         <form:input path="avlqty"  value="${user.avlqty}" maxlength="8" minlength="1" 
					  required="required" onkeypress="return isNumber(event)" class="form-control" />
							
							
							</div>
                <div class="row" style="padding-top:3%">
                <button style="margin-left:30%" type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-refresh"></span> Update
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
                           </c:forEach>
                             
                             </body>
                             
				
</html>                      