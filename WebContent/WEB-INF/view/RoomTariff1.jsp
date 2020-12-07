<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>tarrifDetails</title>
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
						<label>Room Tariff</label>
					</div>
					<div class="panel-body">
					<div class="row">
				                 <form action="AddTarrif.html">
							        <div class="col-xs-2" style="padding-left:3%">
									<button type="submit" class="btn btn-info">
                                     <span class="glyphicon glyphicon-plus"></span> ADD
                                    </button>
							      </div>
							      </form>
							<div class="col-xs-4" align=right>
							
						<label style="padding-left: 40px;padding-top: 2%; padding-right: 0px;">Search By Room No</label>
							</div>
							<div class="col-xs-3">
							
							 <div class="controls">
							 
							 <form:form method="POST" action="searchbyRoomno.html"
								modelAttribute="tarrif">
								
								<form:select path="roomno" onchange="this.form.submit()" class="form-control">
									<form:option value="roomno">--SelectRoomNo--</form:option>
									<form:options items="${roonnos}" required="required"
										autocomplete="off" />
								</form:select>
</form:form>
                       
                    </div>
								</div>
									<div class="col-xs-3">
	<!-- <button  type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-search"></span> Search
    </button> -->
    <button style="margin-left:10px" type="button" class="btn btn-info">
     <a href="tarrifReport.html" style="color:white;text-decoration:none"> <span class="glyphicon glyphicon-list-alt"></span> Report</a>
    </button>
  
    </div>
  
							</div>
							</div>
							<div class="row" style="padding-left:450px;padding-right:450px;padding-top:20px;">
  
				</div>				
   <div class="bs-example" style="padding-left: 3%;padding-right: 3%">
    <table class="table table-bordered">
        <thead>
            <tr style="    background-color: #337ab7;
    color: #f9f8f8">
                 <th><span class="glyphicon glyphicon-credit-card"></span> Id</th>
                <th><span class="glyphicon glyphicon-map-marker"></span> Location</th>
                <th><span class="glyphicon glyphicon-tag"></span> Room No</th>
                <th><span class="glyphicon glyphicon-inbox"></span> Room Type</th>
               <th><span class="glyphicon glyphicon-bed"></span> No Of Beds</th>
                <th><span class="glyphicon glyphicon-usd"></span> Room Rent</th>
                <th><span class="glyphicon glyphicon-edit"></span> Edit</th>
                <th><span class="glyphicon glyphicon-trash"></span> Delete</th>
            </tr>
        </thead>
        <tbody>
        
          <c:if test="${empty td}">
          
          <h5 style="color: red" align="center">SORRY NO DATA FOUND!</h5>
          
          </c:if>
        
        <c:forEach items="${td}" var="pd">
            <tr>
                       <td><c:out value="${pd.tno}" /></td>
						<td><c:out value="${pd.locations}" /></td>
						<td><c:out value="${pd.roomno}" /></td>
						<td><c:out value="${pd.rmtype}" /></td>
						<td><c:out value="${pd.noofbeds}" /></td>
						<td><c:out value="${pd.bcharges}" /></td>
               
                <td align="center"><a  class="btn btn-info" href="tarrifEdit.html?tno=${pd.tno}"><span class="glyphicon glyphicon-edit"></span></a></td>
                <td align="center"><a  class="btn btn-info" href="tarrifDelete.html?tno=${pd.tno}"><span class="glyphicon glyphicon-trash"></span></a></td>
                
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