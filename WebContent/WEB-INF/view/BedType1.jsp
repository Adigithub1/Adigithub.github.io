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
<title>Doctor Information</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>


</head>
<body style="margin-top:10px">

	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Bed Type</label>
					</div>
					<div class="panel-body">
					
					
					<div class="row">
				
						<form:form action="Addbed.html" modelAttribute="bedtype">
							<div class="col-xs-2" style="padding-left:3%">
									<button type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-plus"></span> ADD
    </button>
							</div>
							</form:form>
							 <div class="col-xs-4" align=right>
							
								<label style="padding-left: 40px;padding-top: 2%; padding-right: 0px;">Search By Bed Type</label>
							</div> 
							<div class="col-xs-3">
							
							 <div class="controls">
                         <form:form method="POST" action="searchbybedType.html"
								modelAttribute="bedtype">
								
								<form:select path="btypename" onchange="this.form.submit()" class="form-control">
									<form:option value="None">--SelectbedType--</form:option>
									<form:options items="${names}" required="required"
										autocomplete="off" />
								</form:select>
</form:form>
                    </div>
								</div>
									<div class="col-xs-3">
									<button  type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-search"></span> Search
    </button>
   
  
    </div>
  
							</div>
							</div>
							<div class="row" style="padding-left:250px;padding-right:250px;padding-top:20px;">
  
				</div>				
   <div class="bs-example" style="padding-left: 3%;padding-right: 3%">
    <table class="table table-bordered">
        <thead>
            <tr style="    background-color: #337ab7;
    color: #f9f8f8">
                <th><span class="glyphicon glyphicon-bed"></span> Bed Type Code</th>
                <th><span class="glyphicon glyphicon-bed"></span> Bed Type Name</th>
                <th><span class="glyphicon glyphicon-pencil"></span> Remark</th>
            
                <th><span class="glyphicon glyphicon-edit"></span> Edit</th>
                <th><span class="glyphicon glyphicon-trash"></span> Delete</th>
            </tr>
        </thead>
        <tbody>
         <c:if test="${empty beds}">
				
				<h5 style="color: red" align="center">SORRY NO DATA FOUND!</h5>
				
				</c:if>
				<c:forEach items="${beds}" var="rooms">
            <tr>
                        <td><c:out value="${rooms.bid}" /></td>
						<td><c:out value="${rooms.btypename}" /></td>
						<td><c:out value="${rooms.remarks}" /></td>
               
               
                <td align="center"><a class="btn btn-info"  href="bedEdit.html?bid=${rooms.bid}"><span class="glyphicon glyphicon-edit"></span></a></td>
                <td align="center"><a  class="btn btn-info"  href="bedDelete.html?bid=${rooms.bid}"><span class="glyphicon glyphicon-trash"></span></a></td>
                
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