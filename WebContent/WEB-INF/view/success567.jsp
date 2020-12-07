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
<title>Patient Appointment]</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
        function numberOnly(txt, e) {
            var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz .";
            var code;
            if (window.event)
                code = e.keyCode;
            else
                code = e.which;
            var char = keychar = String.fromCharCode(code);
            if (arr.indexOf(char) == -1)
                return false;
            document.getElementById("namess").onkeypress=function(e){
                var e=window.event || e
                var keyunicode=e.charCode || e.keyCode
                //Allow alphabetical keys, plus BACKSPACE and SPACE
                return (keyunicode>=65 && keyunicode<=122&&keyunicode!=91&&keyunicode!=92&&keyunicode!=93&&keyunicode!=94|| keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
                }
            
            
            
            
            
            document.getElementById("message3").onkeypress=function(e){
                var e=window.event || e
                var keyunicode=e.charCode || e.keyCode
                //Allow alphabetical keys, plus BACKSPACE and SPACE
                return (keyunicode>=65 && keyunicode<=122&&keyunicode!=91&&keyunicode!=92&&keyunicode!=93&&keyunicode!=94 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
                }
            document.getElementById("message6").onkeypress=function(e){
                var e=window.event || e
                var keyunicode=e.charCode || e.keyCode
                //Allow alphabetical keys, plus BACKSPACE and SPACE
                return (keyunicode>=65 && keyunicode<=122&&keyunicode!=91&&keyunicode!=92&&keyunicode!=93&&keyunicode!=94 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
                }
            document.getElementById("message7").onkeypress=function(e){
                var e=window.event || e
                var keyunicode=e.charCode || e.keyCode
                //Allow alphabetical keys, plus BACKSPACE and SPACE
                return (keyunicode>=65 && keyunicode<=122&&keyunicode!=91&&keyunicode!=92&&keyunicode!=93&&keyunicode!=94 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
                }
            document.getElementById("message8").onkeypress=function(e){
                var e=window.event || e
                var keyunicode=e.charCode || e.keyCode
                //Allow alphabetical keys, plus BACKSPACE and SPACE
                return (keyunicode>=65 && keyunicode<=122&&keyunicode!=91&&keyunicode!=92&&keyunicode!=93&&keyunicode!=94 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
                }
            document.getElementById("message11").onkeypress=function(e){
                var e=window.event || e
                var keyunicode=e.charCode || e.keyCode
                //Allow alphabetical keys, plus BACKSPACE and SPACE
                return (keyunicode>=65 && keyunicode<=122&&keyunicode!=91&&keyunicode!=92&&keyunicode!=93&&keyunicode!=94 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
                }
            document.getElementById("message13").onkeypress=function(e){
                var e=window.event || e
                var keyunicode=e.charCode || e.keyCode
                //Allow alphabetical keys, plus BACKSPACE and SPACE
                return (keyunicode>=65 && keyunicode<=122&&keyunicode!=91&&keyunicode!=92&&keyunicode!=93&&keyunicode!=94 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
                }
            
        }
    </script>
            <script type="text/javascript">
        function numberOnly1(txt, e) {
            var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-";
            var code;
            if (window.event)
                code = e.keyCode;
            else
                code = e.which;
            var char = keychar = String.fromCharCode(code);
            if (arr.indexOf(char) == -1)
                return false;
            
        }
        
        document.getElementById("regnoss").onkeypress=function(e){
            var e=window.event || e
            var keyunicode=e.charCode || e.keyCode
            //Allow alphabetical keys, plus BACKSPACE and SPACE
            return (keyunicode>=65 && keyunicode<=122&&keyunicode!=91&&keyunicode!=92&&keyunicode!=93&&keyunicode!=94 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
            }
    </script>
  </script>
        <script type="text/javascript">
    
   
    $( function() {
      $( "#datepicker" ).datepicker();
    
    } );
   
    </script>
   <script type="text/javascript">


function submitIt() {
    if (document.getElementById('namess').value == ""&&document.getElementById('regnoss').value == ""&&document.getElementById('datepicker').value == "") {
        alert ("Please Enter Atleast One Field");
        return false;
    } else {
        return true;
    }
}




</script>
</head>
<body style="margin-top:50px">

	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Patient Registration</label>
					</div>
					<div class="panel-body">
					<form action="index.html" class="butt">			
					<button type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-plus"></span> Add
    </button>
    </form>
    <div class="panel-body">
					<div class="row">
					<div class="col-xs-3"></div>
							<div class="col-xs-6">
					<form action="index2.html" class="abcd" onSubmit="return submitIt()">		
                           <label for="lname">Search By Patient Name</label>
                            <input type="text" class="form-control" onkeypress="return numberOnly(this, event)" name="name" id="namess">
                            </div><div class="col-xs-3"></div>
                            </div>
                         <div class="row">
                         	<div class="col-xs-3"></div>
                         <div class="col-xs-6">
							
                           <label for="lname">Search By MR.No</label>
                            <input type="text" class="form-control" onkeypress="return numberOnly1(this, event)" name="regno" id="regnoss">
                            </div><div class="col-xs-3"></div></div>
							<div class="row">
							<div class="col-xs-3"></div>
							<div class="col-xs-6">
								<label>Registration Date</label>
								<div class="input-append date form_datetime">
									<input  name="date"  class="form-control"  id="datepicker" placeholder="DD/MM/YYYY" >
									</div><div class="col-xs-3"></div>
									</div>
									</div>
									<div class="row" style="margin-top:3%">
										<div class="col-xs-3"></div>
										<div class="col-xs-6">
									<center>
										
									<button  type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-search"></span> Search
    </button></center></div>
									</div><div class="col-xs-3"></div>
					</form>			
									
    
    			</div>
							</div>
								<div class="row" style="padding-left:250px;padding-right:250px;padding-top:3px;">
    <center>
    <div class="alert alert-success"><span class="glyphicon glyphicon-ok"></span> Record Inserted Successfully......</div>
    </center>
				</div>
   <div class="bs-example" style="padding-left:2%;padding-right:2%">
   <c:if test="${empty abc}">	
   <h4 style="color: red;" align="center">SORRY NO DATA FOUND!</h4>
    </c:if>
    <table class="table table-bordered">
 
        <thead>
        
            <tr style="    background-color: #337ab7;
    color: white;">
                <th><span class="glyphicon glyphicon-book"></span> MR.No</th>
                <th><span class="glyphicon glyphicon-user"></span> Patient Name</th>
                <th><span class="glyphicon glyphicon-calendar"></span> Registration Date</th>
                <th><span class="glyphicon glyphicon-edit"></span> Edit</th>
                <th><span class="glyphicon glyphicon-print"></span> Print</th>
            </tr>
        </thead>
        <tbody>
       <c:forEach items="${abc}" var="abc">
            <tr>
                <td><c:out value="${abc.registNo}" /></td>
                <td><c:out value="${abc.patientName}"/></td>
                <td><c:out value="${abc.registDate}" /></td>
              
                <td><form action="editaddpatient1205.html">
					  <input type="hidden" value="${abc.registNo}" name="registNo" >
								<button class="btn btn-info" type="submit" value="Edit" class="submitClass" ><span
												class="glyphicon glyphicon-edit"></span></button>
							</form></td>
                 <td><form:form action="patientReport.html?registNo=${abc.registNo}"
	modelAttribute="user">
	<%-- 	<form:input  path="registNo" required="required" /> --%>
	<button class="btn btn-info" type="submit" value="Print">
		<span class="glyphicon glyphicon-print"></span>
	</button>


</form:form></td>
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