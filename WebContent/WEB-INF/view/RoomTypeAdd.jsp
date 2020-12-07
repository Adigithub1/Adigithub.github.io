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
<title>Add RoomType</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>

</head>
<body>
<form:form id="roomtype" modelAttribute="roomtype" method="post"
				name="form1" action="saveRooms.html?id=${rooms.id}"
				onsubmit="return formsubmit()">
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label> Add Room Type</label>
					</div>
					<div class="panel-body">
					
						<div class="row">
						<div class="col-xs-4"></div>
							<div class="col-xs-4">
							
                           <label for="lname">Room Type Name</label>
                           <form:input path="roomtypename" id="roomtypename"  required="required"  value="${rooms.roomtypename}"
								autocomplete="off" class="form-control" />
                            </div>
							
							
							</div>
							
					<div class="row">
						<div class="col-xs-4"></div>
							
							<div class="col-xs-4">
							
                           <label for="lname">Remarks</label>
                            <form:input path="remarks" id="remarks"  required="required"  value="${rooms.remarks}"
								autocomplete="off" class="form-control" />
                            </div>
                            </div>
							
							
						
  
                
</div>
                <div class="row" style="margin-bottom:20px">
                <center>
                <button  type="submit" class="btn btn-info">
                <span class="glyphicon glyphicon-save"></span> Save
                </button>
   
     <button type="button" class="btn btn-info">
   <a style="color:white;text-decoration:none" href="roomDetails.html">   <span class="glyphicon glyphicon-remove"></span> close</a>
    </button>
    </center>
              </div>  
               
              
                </div>
                </div>
                </div>
                 

      </div>
</form:form>
                           
                             
                             </body>
                             
				
</html>                      