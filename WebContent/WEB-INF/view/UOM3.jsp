<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Unit of measurement</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"
	media="screen,projection" />
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	function alphaOnly(txt, e) 
	{
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
						<label>Update Unit Of Measurement</label>
					</div>
					<div class="panel-body"
						style="padding-left: 30%; padding-right: 30%">
						<c:forEach items="${model.p}" var="p">
							<form:form id="registerForm" modelAttribute="p" method="post"
								action="saveUpdateUOM.html">

								<div class="row">

									<form:label path="unitId">Unit ID:</form:label>
									<form:input path="unitId" readonly="true"  class="form-control"
										value="${p.unitId}" />
								</div>

								<div class="row">
									<form:label path="unitName">Unit Name:</form:label>
									<form:input path="unitName" class="form-control"
										value="${p.unitName}"
										onkeypress="return alphaOnly(this, event)" required="required" maxlength="20"
										minlength="2" autocomplete="off" />

								</div>


								<div class="row" style="padding-top: 3%">
						
<center>
  <button  type="submit" class="btn btn-info" Onclick="return confirmComplete();" value="Save">
      <span class="glyphicon glyphicon-refresh"></span> Update
    </button>

									 <a  href="userListUOM.html" class="btn btn-info">
      <span  class="glyphicon glyphicon-remove"></span>Close</a></center>
								</div>

							</form:form>
						</c:forEach>
					</div>

				</div>
			</div>
		</div>

	</div>
	</div>


</body>


</html>
