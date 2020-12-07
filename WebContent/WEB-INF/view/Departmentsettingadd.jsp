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
<title>Department Details</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>

 <script type="text/javascript">
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
            
        }
    </script>
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
     document.getElementById("departmentName").onkeypress=function(e){
        var e=window.event || e
        var keyunicode=e.charCode || e.keyCode
        //Allow alphabetical keys, plus BACKSPACE and SPACE
        return (keyunicode>=65 && keyunicode<=122 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
        }
}
 </script>

</head>
<body>

<c:url var="userDepart" value="saveUser1Departmentde.html"/>

<form:form  modelAttribute="user" method="post" id="exampleTextarea"
				action="${userDepart}"
				onsubmit="return formsubmit()">
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Department Details</label>
					</div>
					<div class="panel-body">
					<div class="row">
							<div class="col-xs-6">
							<form:label path="id">Department ID</form:label>
							<form:input path="id"  type="text" class="form-control"  required="required" readonly="true"
							minlength="3" maxlength="30"	value="${userinc}" ></form:input>
                           
                            </div>
							
							<div class="col-xs-6">
							<form:label path="departmentName">Department Name</form:label>
							<form:input path="departmentName"  type="text" class="form-control" onkeypress="return numberOnly(this, event)" required="required"
							minlength="3" maxlength="30" id="departmentName"	 value="${abc.departmentName}" ></form:input>
                           
                            </div>
                            </div>
                               <div class="row">
							<div class="col-xs-6">
							<form:label path="maindepartmentName">Main Department Name</form:label>
							<form:select path="maindepartmentName"    class="form-control" id="sel1">
							<form:option value="" label="....select...."></form:option>
							<form:options items="${maindept}" />
							</form:select>
							
							</div>
							
							<div class="col-xs-6">
							<form:label path="location">Location</form:label>
							<form:select path="location"    class="form-control" id="sel1">
							
								<form:option value="" label="....select...."></form:option>
							<form:options  items="${location}" />
							</form:select>
							
							
							</div>
							</div>
 						<div class="row" style="margin-top:3%;margin-bottom:3%" align="center">
					  
                <button  type="submit" class="btn btn-info">
    			  <span class="glyphicon glyphicon-save"></span> Save
    </button>
   
     <a href="indexxv1.html" class="btn btn-info">
      <span class="glyphicon glyphicon-remove"></span> Close
   
  
    </a>
           
              </div>  
                </div>
                
				</div>

			</div>
		</div>
		</div>
		</form:form> 
		
</body>
</html>