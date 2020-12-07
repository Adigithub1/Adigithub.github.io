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

<script>
function numberOnly(txt, e) {
    var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ";
    var code;
    if (window.event)
        code = e.keyCode;
    else
        code = e.which;
    var char = keychar = String.fromCharCode(code);
    if (arr.indexOf(char) == -1)
        return false;
     document.getElementById("fname").onkeypress=function(e){
        var e=window.event || e
        var keyunicode=e.charCode || e.keyCode
        //Allow alphabetical keys, plus BACKSPACE and SPACE
        
        return (keyunicode>=65 && keyunicode<=122 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
        		
       
     }
}
 </script>

</head>
<body style="margin-top: 50px">

	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Location Details</label>
					</div>
					
					
					<div class="panel-body">
						<div class="row">
						<div class="col-xs-2">
					<form action="index5.html" style="margin-left:20px;">
					<button type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-plus"></span> ADD
    </button>
    
    </form>
    </div>
    	<form action="Locationdetailsadd.html">
							<div class="col-xs-4" align=right>
						
                           <label  
   style="padding-top:3%">Search By Location</label>
    </div>
    <div class="col-xs-3">
							
							 <div class="controls">
                            <input type="text" class="form-control" name="hospitalName" id="fname" >
                            </div>
				</div>
									
									<div  class="col-xs-3">
									<center>
									<button  type="submit" class="btn btn-info">
      <span class=" glyphicon glyphicon-search"></span> Search
    </button>
    </center>
</div>
    	</form>	
    </div>
    <div>
    
      <div class="row" style="padding-left:250px;padding-right:250px;padding-top:20px;">
							</div>
						
			<br>		
			<br>
			<br>			
   <div class="bs-example">
    <table class="table table-bordered">
        <thead>
            <tr style="    background-color: #337ab7;
    color: #f9f8f8">
                <th><span class="glyphicon glyphicon-map-marker"></span> Location Code</th>
                <th><span class="glyphicon glyphicon-map-marker"></span> Location Name</th>
                <th><span class="glyphicon glyphicon-pencil"></span> Remarks</th>
                <th><span class="glyphicon glyphicon-edit"></span> Edit</th>
             
            </tr>
        </thead>
        <c:if test="${empty abc}"><div align="center">
				 <h5 style="color:red">"SORRY NO DATA FOUND!"</h5>
				 </div> </c:if>
        <c:forEach items="${abc}" var="abc">
        <tbody>
            <tr>
               <td><c:out value="${abc.id}" /></td>
						<td><c:out value="${abc.floorName}" /></td>
						
						<td><c:out value="${abc.remarks}" /></td>
             
                <td><form action="edit6.html?id=${abc.id}"  method="post">
							<center>	<button   class="btn btn-info" type="submit">
										<span class="glyphicon glyphicon-edit"></span> 
									</button></center>
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
		</div>
	
</body>
</html>