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
<title>Room Tariff</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">

   function isNumber(evt) {
        evt = (evt) ? evt : window.event;
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
            alert("Please enter only Numbers.");
            return false;
        }

        return true;
    }
   </script>
</head>
<body>
<c:forEach items="${map.ABC}" var="rooms">
<form:form action="updateTarrifDetails.html?tno=${rooms.tno}" modelAttribute="tarrif">
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Update Room Tariff</label>
					</div>
					<div class="panel-body">
					<div class="row">
							<div class="col-xs-6">
							
                           <label for="locations">Location</label>
                          <form:select class="form-control" path="locations">
						<form:option value="${rooms.locations}" class="form-control" >${rooms.locations}</form:option>
						<form:options items="${map.locations}" required="required" 
							autocomplete="off" />
					</form:select>
                            </div>
					
							<div class="col-xs-6">
							
                           <label for="rmtype">Room Type</label>
                            <form:select class="form-control" path="rmtype">
						<form:option value="${rooms.rmtype}" class="form-control" >${rooms.rmtype}</form:option>
						<form:options items="${map.roomtype}" required="required" class="form-control" 
							autocomplete="off" />
					</form:select>
                            </div>
                            </div>
                          
                            <div class="row">
							<div class="col-xs-6">
							
                           <label for="roomno">Room No</label>
                           <form:input path="roomno"   required="required" 
								autocomplete="off" class="form-control" type="number" min="1" value="${rooms.roomno}"
								onkeypress="return isNumber(event)"/>
                            </div>
                      
						
							<div class="col-xs-6">
							
                           <label for="noofbeds">No Of Beds</label>
                            <form:input path="noofbeds"   required="required" value="${rooms.noofbeds}"
								autocomplete="off" class="form-control" type="number" min="1" onkeypress="return isNumber(event)" />
                           
                            </div>
                            </div>
                            
						<div class="row">
							
							
						
                <div class="col-xs-6" style="padding-top:2%">
                
  <div class="form-group"> 
    <div class="col-sm-3">
    <label >A/C Room:</label>
    </div>
       <div class="col-sm-3">
            <label class="radio-inline">
                 <input name="d"   type="radio" />Yes
             </label>
        </div>
        <div class="col-sm-3">
             <label class="radio-inline">
                  <input name="d"   type="radio" />No
             </label>
         </div>
   </div>
   </div>
   </div>

                  <div class="row">
               
        <div class="panel panel-primary" style="margin-top:3%;margin-bottom:-1.5%">
   <div class="panel-heading">
						<label>Tariff</label>
					
   			
					</div>
					<div class="panel-body">
					   <div class="row">
							<div class="col-xs-6">
							
                           <label for="bcharges">Bed Charges</label>
                           <form:input path="bcharges"   required="required" value="${rooms.bcharges}"
								autocomplete="off" class="form-control" type="number" min="1" onkeypress="return isNumber(event)" />
                            </div>
                      
						
							<div class="col-xs-6">
							
                           <label for="dmocharges">DMO Charges</label>
                            <form:input path="dmocharges"   required="required" value="${rooms.dmocharges}"
								autocomplete="off" class="form-control" type="number" min="1" onkeypress="return isNumber(event)" />
                           
                            </div>
                            </div>
                            
							   <div class="row">
							<div class="col-xs-6">
							
                           <label for="nurcharges">Nursing Charges</label>
                            <form:input path="nurcharges"   required="required" value="${rooms.nurcharges}"
								autocomplete="off" class="form-control" type="number" min="1" onkeypress="return isNumber(event)" />
                            </div>
                      
						
							<div class="col-xs-6">
							
                           <label for="dcharges">Doctor Consultant Charges</label>
                            <form:input path="dcharges"   required="required" value="${rooms.dcharges}"
								autocomplete="off" class="form-control" type="number" min="1" onkeypress="return isNumber(event)" />
                           
                            </div>
                            </div>
                            
                </div>
                 <div class="row" style="margin-top:3%;margin-bottom:3%" align="center">
					  
                <button  type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-refresh"></span> Update
    </button>
   
     <button type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-remove">                      </span> Close
    </button>
              </div>  
                </div>
                
                </div>
                
                 
</div>
      </div>
                            </div>
                            </div>
                            
                             </div>
                             </form:form>
                             </c:forEach>
                             </body>
                             
				
</html>                      