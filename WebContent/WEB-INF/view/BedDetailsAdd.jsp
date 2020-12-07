<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SALES ENTRY FORM</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link type="text/css" rel="stylesheet" href="css/bootstrap.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"
	media="screen,projection" />
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>


<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/smoothness/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BedDetailsAdd</title>
</head>
<body style="margin-top:10px">

	<div align="center">
		<form:form method="POST" action="beddetailsAddDetails.html"
			modelAttribute="room">
			<div class="row">
			<div class="col-xs-4"></div>
			<div class="col-xs-4">
			<label path="floorname">Select Floor</label>
			<form:select  class="form-control" path="floorname" onchange="this.form.submit()">
				<form:option value="">--SelectLocation--</form:option>
				<form:options items="${locations}" required="required"
					autocomplete="off" />
			</form:select>
			</div>
			<div class="col-xs-4"></div>
			</div>
		</form:form>
		<form:form method="POST"
			action="getRoomDetails.html?floorname=${location[0]}"
			modelAttribute="room">
			<div class="row">
			<div class="col-xs-4"></div>
			<div class="col-xs-4">
			<label path="roomno">Room No</label>
			<form:select class="form-control" path="roomno" onchange="this.form.submit()">
				<form:option value="roomno">--SelectRoomNo---</form:option>
				<form:options items="${rommnos}" required="required"
					autocomplete="off" />
			</form:select>
			</div>
				<div class="col-xs-4"></div>
			</div>
		
			<c:forEach items="${roomDetails}" var="abc">
			<div class="row" style="padding-left:250px;padding-right:250px;padding-top:20px;">
    <center>
    
    
    <div class="alert alert-success"> <h4>No of Beds = ${abc.noofbeds}</h4>
				<h4>Bed Type = ${abc.rmtype}</h4> </div>
  
    </center>
				</div>	
				
  <div class="bs-example" style="padding-left: 3%;padding-right: 3%">
				<table class="table table-bordered" >
					<thead>
						<tr style="background-color: #337ab7; color: #f9f8f8">
							<th><span class="glyphicon glyphicon-list"></span> BedNo</th>
							<th><span class="glyphicon glyphicon-bed"></span> BedType</th>
							<th><span class="glyphicon glyphicon-pencil"></span> Remarks</th>
						</tr>
					</thead>
					<tr>
						<td><form:input class="form-control"  path="bedNo" pattern="[a-zA-Z0-9]+" required="required"/></td>
						<td><form:select class="form-control" path="bedType" required="required">
							<form:option value="">--Select Bed Type--</form:option>
							<form:options items="${bedtype}" 
								autocomplete="off" />
						</form:select></td>
						<td><form:input class="form-control" path="remarks" /></td>
					</tr>

				</table>
				
</div>
<br>
				<button type="submit" class="btn btn-info" name="add">
                                     <span class="glyphicon glyphicon-plus"></span> Add
                             
                                    </button>
                                     <br>
                                     <br>
 <div class="bs-example" style="padding-left: 3%;padding-right: 3%">
				<table class="table table-bordered">
					<tr style="background-color: #337ab7; color: #f9f8f8">
						<th><span class="glyphicon glyphicon-list"></span> BedNo</th>
						<th><span class="glyphicon glyphicon-bed"></span> BedType</th>
						<th><span class="glyphicon glyphicon-pencil"></span> Remarks</th>
					</tr>
					<c:forEach items="${getProductDetails}" var="def">
						<tr
							style="background-color: white; color: black; text-align: center;"
							height="30px">
							<%-- <td><c:out value="${def.roomno}" /></td> --%>
							<td><c:out value="${def.bedNo}" /></td>
							<td><c:out value="${def.bedType}" /></td>
							<td><c:out value="${def.remarks}" /></td>
						</tr>
					</c:forEach>
				</table>
</div>
					<button type="submit" class="btn btn-info" name="submit">
                                     <span class="glyphicon glyphicon-save"></span> Save
                             
                                    </button>

					<button type="submit" class="btn btn-info">
                                     <span class="glyphicon glyphicon-remove"></span> Close
                             
                                    </button>

			</c:forEach>


		</form:form>

		<%-- --%>
		<!-- 
			

 -->





	</div>
</body>
</html>