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
<title>Product Type</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	function alphaOnly(txt, e) {
		var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz  ";
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
</head>
<body  style="margin-top:10px">

	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label> Update Product Type</label>
					</div>
					<c:forEach items="${model.update}" var="pt">
					<form:form id="registerForm" modelAttribute="pt" method="post" action="saveUpdate.html">
					<div class="panel-body"  style="padding-left:30%;padding-right:30%">
					<div class="row" >
						
							<form:label path="id">Product ID:</form:label>
                          <!--  <label for="lname">Product ID</label>
                            <input type="text" class="form-control" name="id"> -->
                         <form:input path="id" readonly="true" value="${model.maxId[0]}" class="form-control" />
							
							
							</div>
					
						<div class="row">
							<form:label path="name">ProductType Name:</form:label>
					        <form:input path="name" onkeypress="return alphaOnly(this, event)"  value="${pt.name}" 
					        class="form-control"  required="required" maxlength="20" minlength="3" autocomplete="off" />
							
                          <!--  <label for="lname">Product Name</label>
                            <input type="text" class="form-control" name="name"> -->
                       
							</div>
<div class="row">
						
		<form:label  path="type"> Product Type:</form:label>				
			<form:select id="icon_prefix" path="type" name="card" required="required" class="form-control">
			<form:option path="type" value="${pt.type}" required="required"></form:option>
			<form:options path="type" items="${model.card}" /></form:select>			
						
</div>
<div class="row" style="padding-top:3%">
<center>
 <button  type="submit" class="btn btn-info" Onclick="return confirmComplete();" value="Save">
      <span class="glyphicon glyphicon-refresh"></span> Update
    </button>

     <a  href="userListProductType.html" class="btn btn-info">
      <span  class="glyphicon glyphicon-remove"></span>Close</a>
      </center>
              </div>      
                </div>
                
            
 </form:form>
     </c:forEach>
      </div>
                            </div>
                            </div>
                            
                             </div>
                            
                           
                             
                             </body>
                             
				
</html>                      