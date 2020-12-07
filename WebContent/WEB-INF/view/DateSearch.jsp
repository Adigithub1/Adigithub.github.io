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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sales Entry Search</title>
</head>
<body style="margin-top:10px">
<div class="container-fluid">
		<div class="container">
			<div class="row">
<div class="panel panel-primary">
					<div class="panel-heading">
						<label> Sales Return Search By Date</label>
					</div>
					<div class="panel-body">
					

<div class="row">
<div class="col-xs-4"></div>
<div class="col-xs-4">
<form:form action="sampleReport.html" modelAttribute="user">
<form:label path="salesDate">Search By Sale Return Date</form:label>
<form:input class="form-control"  path="salesDate" type="date"/>
<center style="padding-top:4%" >
 <button  type="submit" class="btn btn-info">
                <span class="glyphicon glyphicon-list-alt"></span> Report
                </button></center>
</form:form>

<div class="col-xs-4"></div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>