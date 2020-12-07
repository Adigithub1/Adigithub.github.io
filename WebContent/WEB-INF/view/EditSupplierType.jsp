<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Add Supplier Type</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	function alphaOnly(txt, e) {
		var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ";
		var code;
		if (window.event)
			code = e.keyCode;
		else
			code = e.which;
		var char = keychar = String.fromCharCode(code);
		if (arr.indexOf(char) == -1)
{
			
			alert("Please enter only characters.");
			return false;
			}

	}
</script>

<script type="text/javascript">
function ConfirmDelete()
{
  var x = confirm("Are you sure you want to delete?");
  if (x)
      return true;
  else
    return false;
}


</script>
</head>
<body  style="margin-top:10px">
<c:forEach items="${asdf}" var="p">
<form:form id="registerForm" modelAttribute="asdf" method="post" action="editSupplierType.html">
			
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Add Supplier Type </label>
					</div>
					<div class="panel-body"  style="padding-left:30%;padding-right:30%">
					<div class="row" >
						<form:label path="id">ID:</form:label>
								<form:input path="id" readonly="true" class="form-control" value="${p.id}" />
						
                          
                         
							</div>
					
						<div class="row">
							<form:label path="supplierType">Supplier Type:</form:label>
								<form:input path="supplierType" onkeypress="return alphaOnly(this, event)" type="text" required="required"  
								class="form-control" maxlength="20" minlength="2" autocomplete="off" value="${p.SupplierType}" />
					
							
                          
							</div>
					

                <div class="row" style="padding-top:3%">
                <center>
                <button  type="submit" class="btn btn-info" value="Update">
      <span class="glyphicon glyphicon-save"></span> Update
    </button>
   
     <a  href=".html" class="btn btn-info">
      <span  class="glyphicon glyphicon-remove"></span>Close</a>
    </center>
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