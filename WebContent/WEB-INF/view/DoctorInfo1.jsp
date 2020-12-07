<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<script type="text/javascript">

function numberOnly(txt, e) {
	 var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz . ";
    var code;
    if (window.event)
        code = e.keyCode;
    else
        code = e.which;
    var char = keychar = String.fromCharCode(code);
    if (arr.indexOf(char) == -1)
        return false;
	 document.getElementById("dc").onkeypress=function(e){
			var e=window.event || e
			var keyunicode=e.charCode || e.keyCode
			//Allow alphabetical keys, plus BACKSPACE and SPACE
			return (keyunicode>=65 && keyunicode<=122 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
			}
    
}
function confirmAction() {
	if (!confirm("Are You Sure You want to Edit")) {
		return false;
	}
}
function confirmAction1() {
	if (!confirm("Are You Sure You want to Delete")) {
		return false;
	}
}
function myclear(){
	document.getElementById('dc').value="";
}

</script>

</head>
<body style="margin-top: 10px" onload="myclear()">

	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Doctor Information</label>
					</div>
					<div class="panel-body">
					<div class="row">
				
	<form action="pagedoctor.html">					
							<div class="col-xs-2" style="padding-left:5%">
									<button type="submit"  class="btn btn-info">
      <span class="glyphicon glyphicon-plus"></span> ADD
    </button>
							</div>
							</form>
			<form:form action="doctorsearch.html">						
							<div class="col-xs-3">
							
								<label style="padding-top:3%;padding-left:4%;align:right">Search By Name</label>
							</div>
							<div class="col-xs-3" style="padding-left: 0px;
">
							
							 <div class="controls"></div>
                         <input type="text" class="form-control" name="doctorname" onkeypress="return numberOnly(this, event)" maxlength="30" id="dc">
                      
                 
                    </div>
								
								
									<div class="col-xs-4">
									<button  type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-search"></span> Search
    </button>
  
     
  
    <button  type="submit" class="btn btn-info">
     
    <a href="doctorReport.html" style="color:white;text-decoration:none"> <span class="glyphicon glyphicon-list-alt"></span> Report</a>
    </button>
  
   </div>
    </form:form>
  </div>
 
  
							
							<div class="row" style="padding-left:250px;padding-right:250px;padding-top:20px;">
  
				</div>	
<br>
<br>		
   <div class="bs-example" style="padding-left:3%;padding-right:3%;padding-top:1%">
    <c:if test="${empty abc}">
    <h5 style="color: red;" align="center">SORRY NO DATA FOUND!</h5>	
    </c:if>
    <table class="table table-bordered">
        <thead>
            <tr style="    background-color: #337ab7;
    color: #f9f8f8">
                <th><span class="glyphicon glyphicon-list-alt"></span> Doctor Name</th>
                <th><span class="glyphicon glyphicon-user"></span>Specialization</th>
                <th><span class="glyphicon glyphicon-user"></span> Phone Number</th>
                <th><span class="glyphicon glyphicon-user"></span> Consultant Fee</th>
                <th><span class="glyphicon glyphicon-edit"></span> Edit</th>
                <th><span class="glyphicon glyphicon-trash"></span> Delete</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${abc}" var="abc">
				
					<tr
						style="background-color: white; color: black; text-align: center;"
						height="30px">
					<td><c:out value="${abc.doctorname}" /></td>
						
						<td><c:out value="${abc.specialization}" /></td>
						<td><c:out value="${abc.phonenumber1}" /></td>
								<td><c:out value="${abc.consultantfee}" /></td>
						
					  <td><form action="updated.html?id=${abc.id}" method="post">
					  <input type="hidden" name="doctornames" value="${abc.doctorname}">
					   <a class="btn btn-info" onclick="return confirmAction();">   <span class="glyphicon glyphicon-edit"></span></a>
							
								
					   
							</form></td>  
					<td><form action="deleted.html?id=${abc.id}" method="post">
					  <input type="hidden" name="doctornames" value="${abc.doctorname}">
					 <a  class="btn btn-info"   onclick="return confirmAction1();">  <span class="glyphicon glyphicon-trash"></span></a></form></td>
	
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