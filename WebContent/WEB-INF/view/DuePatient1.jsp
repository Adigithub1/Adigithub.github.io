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
<title>DuePatientDetails </title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/leave.css">
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script>
        $(document).ready(function() {
            $("#my1").datepicker({
                dateFormat: "yy-mm-dd",
                changeMonth: true,
                changeYear: true,
                maxDate: "0d",
                minDate: "-40Y",
                yearRange: "-40:+1"
            });
        });
  </script>
</head>
<body style="margin-top:10px">

	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Due Patient Details</label>
					</div>
					<div class="panel-body">
				
    <div class="panel-body">
    <form:form modelAttribute="user" method="post"
			action="retriveDayDetailsOfPatient.html">
					<div class="row">
					<div class="col-xs-2"></div>
					<div class="col-xs-3"> <label for="lname" style="padding-top:3%">Search By Admit Date</label></div>
							<div class="col-xs-3">
							
                          
                           <form:input  id="my1" path="admitdate" required="required" class="form-control"
                           placeholder="year-month-date"/>
               
                            </div>
                            
                          
                            
                        
							
									
										
										<div class="col-xs-4">
							
										
								
									<button type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-search"></span> Search
    </button>
								</form:form>			
									 
									<button  type="submit" class="btn btn-info">
     <a style="color:white;text-decoration:none" href="duepatientReport.html"> <span class="glyphicon glyphicon-list-alt"></span> Report</a>
    </button>
  
					</div>	
					</div>
					
									
    	<%-- <div class="row" style="padding-left:350px;padding-right:350px;padding-top:3px;">
    <center>
   <!--  <div class="alert alert-success"><span class="glyphicon glyphicon-ok"></span> Record Inserted Successfully......</div> -->
    </center>
				</div>	 --%>
    		<br>
    		<br>	
							
   <div class="bs-example">
    <table class="table table-bordered">
        <thead>
            <tr style="    background-color: #337ab7;
    color: white;">
                <th><span class="glyphicon glyphicon-user"></span> Pat/Cus Name</th>
                <th><span class="glyphicon glyphicon-user"></span> Cus Type</th>
                <th><span class="glyphicon glyphicon-user"></span> Age</th>
                 <th><span class="glyphicon glyphicon-user"></span> Sex</th>
                 <th><span class="glyphicon glyphicon-canlendar"></span> Sale Date</th>
                <th><span class="glyphicon glyphicon-usd"></span> Due Amount</th>
                <th><span class="glyphicon glyphicon-edit"></span> Edit</th>
             
            </tr>
        </thead>
        <tbody>
        <c:if test="${empty user}">
				<h5 style="color:red" align="center">SORRY NO DATA FOUND!</h5>
				</c:if>
				
				<c:forEach items="${user}" var="user">
          <tr>
          
                        <td><c:out value="${user.patname}" /></td>
		  				<td><c:out value="${user.custype}" /></td>
						<td><c:out value="${user.age}" /></td>
						<td><c:out value="${user.sex}" /></td>
						<td><c:out value="${user.saledate}" /></td>
						<td><c:out value="${user.dueamt}" /></td>
						<td align=center> <a  class="btn btn-info"  href="edit.html?id=${user.id}"><span class="glyphicon glyphicon-edit"></span></a> 

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