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
<title>Room Information</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>


</head>
<body style="margin-top: 10px;">

	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Room Type</label>
					</div>
					<div class="panel-body">
					<div class="row">
				
					<form:form action="roomTypeAdd.html" modelAttribute="rooms">
				<div class="col-xs-2" style="padding-left:3%">
				<button type="submit" class="btn btn-info">
                  <span class="glyphicon glyphicon-plus"></span> ADD
                 </button>
				</div>
					</form:form>
								<!-- <div class="col-xs-3" align=right>
							
<label style="padding-left: 40px;padding-top: 2%; padding-right: 0px;">Search By Type</label>
							</div> -->
							<div class="col-xs-4" align=right>
							
						<label style="padding-left: 40px;padding-top: 2%; padding-right: 0px;">Search By Room Type</label>
							</div>
							<div class="col-xs-3">
							
							 <div class="controls">
                            <form:form method="POST" action="searchbypRoomType.html"
								modelAttribute="roomtype">
								
								<form:select path="roomtypename" onchange="this.form.submit()" class="form-control">
									<form:option value="None">--SelectRoomType--</form:option>
									<form:options items="${names}" required="required"
										autocomplete="off" />
								</form:select>
</form:form>
							
                            </div>
								</div>
	<div class="col-xs-3">
	<button  type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-search"></span> Search
    </button>
   
  
    </div>
  
							</div>
							</div>
							<br>
							<br>
							
   <div class="bs-example" style="padding-left: 3%;padding-right: 3%">
    <table class="table table-bordered">
        <thead>
            <tr style="    background-color: #337ab7;color: #f9f8f8">
                <th><span class="glyphicon glyphicon-list-alt"></span> Room Type Code</th>
                <th><span class="glyphicon glyphicon-list-alt"></span> Room Type Name</th>
                <th><span class="glyphicon glyphicon-pencil"></span> Remarks</th>
                <th><span class="glyphicon glyphicon-edit"></span> Edit</th>
                <th><span class="glyphicon glyphicon-trash"></span> Delete</th>
            </tr>
        </thead>
        <tbody>
        <c:if test="${empty rooms}">
				
				<h5 style="color: red" align="center">SORRY NO DATA FOUND!</h5>
				
				</c:if>
				
				<c:forEach items="${rooms}" var="rooms">
            <tr>
                       <td><c:out value="${rooms.id}" /></td>
						<td><c:out value="${rooms.roomtypename}" /></td>
						<td><c:out value="${rooms.remarks}" /></td>
                        <td align="center"><a  class="btn btn-info" href="roomEdit.html?id=${rooms.id}"><span class="glyphicon glyphicon-edit"></span></a></td>
                         <td align="center"><a  class="btn btn-info" href="roomDelete.html?id=${rooms.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
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