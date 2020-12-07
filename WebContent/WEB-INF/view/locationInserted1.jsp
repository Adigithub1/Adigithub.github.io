<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Location Details</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>


</head>
<body style="margin-top: 50px">

	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Department Details</label>
					</div>
					<div class="panel-body">
					<form action="index1.html">
					<button type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-plus"></span> Add
    </button>
			</form>		
					<div class="panel-body">
					<div class="row">
							<div class="col-xs-6">
							<form action="Departmentsettingadd.html">
                           <label for="lname">Search By Department Name</label>
                            <input type="text" class="form-control" name="hospitalName">
                            </div>
				
									
									<button style="margin-left:50px" type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-search"></span> Search
    </button>
</div>
    </div>
							</div>
							</form>	
						<div class="row" style="padding-left:450px;padding-right:450px;padding-top:20px;">
    <center>
    <div class="alert alert-success"><span class="glyphicon glyphicon-ok"></span> Record Updated Successfully......</div>
    </center>
				</div>		
   <div class="bs-example">
    <table class="table table-bordered">
        <thead>
            <tr style="    background-color: #337ab7;
    color: #f9f8f8">
                <th><span class="glyphicon glyphicon-object-align-vertical"></span> Department Name</th>
                <th><span class="glyphicon glyphicon-object-align-bottom"></span> Main Department Name</th>
                <th><span class="glyphicon glyphicon-map-marker"></span> Location</th>
                <th><span class="glyphicon glyphicon-edit"></span> Edit</th>
             
            </tr>
        </thead>
         <c:if test="${empty abc}"><div align="center">
				 <h5 style="color:red">"SORRY NO DATA FOUND!"</h5>
				 </div> </c:if>
        <c:forEach items="${abc}" var="abc">
        <tbody>
            <tr>
                <td><c:out value="${abc.departmentName}" /></td>
						<td><c:out value="${abc.maindepartmentName}" /></td>
						
						<td><c:out value="${abc.location}" /></td>
               	<td align="center"> <button><a  style="color:black" 
											href="edit1.html?id=${abc.id}"><span
										class="glyphicon glyphicon-edit"></span></a></button></td>
             
							</form></td>
            </tr>
        </tbody>
        </c:forEach>
    </table>
</div>
					</div>

				</div>

			</div>
		</div>
</body>
</html>