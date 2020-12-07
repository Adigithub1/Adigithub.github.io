
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<script type="text/javascript">
function ConfirmDelete()
{
  var x = confirm("Are you sure you want to delete?");
  if (x)
      return true;
  else
    return false;
}


</script>

</head>
<body style="margin-top:10px">

	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Unit Of Measurement</label>
					</div>
					<div class="panel-body">
					

							<div class="row">
								<form action="addUnit.html">
									<div class="col-xs-2">
										<button type="submit" class="btn btn-info">
											<span class="glyphicon glyphicon-plus"></span> ADD
										</button>
										</div>
								</form>
							
							<form:form action="searchProductUOM.html" modelAttribute="p">
								<div class="col-xs-3">

									<label style="padding-right: 0px;padding-top: 3%;align:right">Search
										By Unit Name</label>
								</div>
								<div class="col-xs-3">
									<form:input path="unitName" maxlength="20" minlength="2"
										onkeypress="return alphaOnly(this, event)" autocomplete="off"
										required="required" type="text" class="form-control"  />
									<div class="controls"></div>
								</div>
								<div class="col-xs-4">
									<button  type="submit"
										class="btn btn-info">
										<span class="glyphicon glyphicon-search"></span> Search
									</button>
									<!-- <button  type="button"
										class="btn btn-info">
										<span class="glyphicon glyphicon-list-alt"></span> Report
									</button> -->

								</div>
								
							</form:form>
							</div>
						

					
				<div class="bs-example">
					<table class="table table-bordered">
						<thead>

							<tr style="background-color: #337ab7; color: #f9f8f8">

								<th><span class="glyphicon glyphicon-list-alt"></span> Unit
									ID</th>
								<th><span class="glyphicon glyphicon-list"></span> Unit
									Name</th>
								<th><span class="glyphicon glyphicon-edit"></span> Edit</th>
								<th><span class="glyphicon glyphicon-trash"></span>
									Delete</th>
							</tr>
						</thead>
						<tbody>
						<%-- <div class="row"
						style="padding-left: 250px; padding-right: 250px; padding-top: 20px;">
						<center>
							<div class="alert alert-success">${updateMsg[0]}</div>
						</center>
					</div> --%>
							
						<tbody>
							<c:if test="${empty p }">
								<h5 style="color: red; text-align: center;">SORRY NO DATA FOUND!</h5>
							</c:if>
							<br>
							<br>
							<c:forEach items="${p}" var="p">
								<tr>
									<td><c:out value="${p.unitId}" /></td>
									<td><c:out value="${p.unitName}" /></td>
									<td align="center"><a  class="btn btn-info"
											href="updateUOM.html?unitId=${p.unitId}"><span
										class="glyphicon glyphicon-edit"></span></a></td>
									<td align="center"><a  class="btn btn-info"
											href="deleteUOM.html?unitId=${p.unitId}"><span class="glyphicon glyphicon-trash"
										Onclick="return ConfirmDelete();" value="1"></span></a></td>

								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

		</div>

	</div>
	</div>
</body>
</html>