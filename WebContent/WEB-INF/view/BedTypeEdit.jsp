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
<title>Add Doctor</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	function alphaOnly(txt, e) {
		var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
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
<c:forEach items="${model.ABC}" var="beds">
<form:form id="roomtype" modelAttribute="bedtype" method="post"
				name="form1" action="updateBeds.html"
				onsubmit="return formsubmit()">
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label> Edit Bed Type</label>
					</div>
					<div class="panel-body">
					
					<div class="row">
						<div class="col-xs-4"></div>
							<div class="col-xs-4">
							
                           <label for="bid">Bed Id</label>
                           <form:input path="bid" id="bid" onkeypress="return alphaOnly(this, event)" required="required"
							maxlength="10" minlength="3" autocomplete="off"  value="${beds.bid}" readonly="true"
								 class="form-control" />
                            </div>
							
							
							</div>
						<div class="row">
						<div class="col-xs-4"></div>
							<div class="col-xs-4">
							
                           <label for="btypename">Bed Type Name</label>
                           <form:input path="btypename" id="btypename" onkeypress="return alphaOnly(this, event)" required="required"
							maxlength="10" minlength="3" autocomplete="off" value="${beds.btypename}"
								 class="form-control" />
                            </div>
							
							
							</div>
						
								
							
					<div class="row">
						<div class="col-xs-4"></div>
							
							<div class="col-xs-4">
							
                           <label for="lname">Remarks</label>
                              <form:input path="remarks" id="remarks"  required="required"  value="${beds.remarks}"
								autocomplete="off" class="form-control" />
                            </div>
                            </div>
							
							
						
  
                
                </div>
                 <div class="row" style="margin-bottom:20px">
                <center>
                <button  type="submit" class="btn btn-info">
                <span class="glyphicon glyphicon-refresh"></span> Update
                </button>
   
     <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-remove"></span> Close
    </button>
    </center>
              </div>  
               
              
                </div>
                </div>
                </div>
                 

      </div>

                           </form:form>
		</c:forEach>
                             
                             </body>
                             
				
</html>                      