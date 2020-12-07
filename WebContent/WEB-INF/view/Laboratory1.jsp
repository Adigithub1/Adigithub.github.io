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
<title></title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	function alphaOnly(txt, e) {
		var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
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
  var x = confirm("Are you sure!!! you want to delete?");
  if (x)
      return true;
  else
    return false;
}


</script>

</head>
<body>

	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Laboratory Details</label>
					</div>
					<div class="panel-body">
					<div class="row">
				
						

              
					<form action="registerLabaratory.html">
					<div class="col-xs-3">
					<button type="submit" class="btn btn-info">
                    <span class="glyphicon glyphicon-plus"></span> ADD
                     </button>
                   
							</div>
  </form>


 
</div>



   <div class="bs-example">
    <table class="table table-bordered">
        <thead>
            <tr style=" background-color: #337ab7; color: #f9f8f8">
            
                <th><span class="glyphicon glyphicon-list-alt"></span> Laboratory Name</th>
                <th><span class="glyphicon glyphicon-earphone"></span> Phone No</th>
                 <th><span class="glyphicon glyphicon-user"></span> Contact Person Name</th>
                
                <th><span class="glyphicon glyphicon-edit"></span> Edit</th>
     
            </tr>
        </thead>
        <tbody>
        
        <br>
         <br>
          
         <c:forEach items="${lab}" var="lab">
								<tr>
									<td><c:out value="${lab.labName}" /></td>
									<td><c:out value="${lab.contactPhNum}" /></td>
									<td><c:out value="${lab.contactPerson}" /></td>
									
<td align="center"><a  class="btn btn-info" 
											href="updateLaboratory.html?labId=${lab.labId}"><span
										class="glyphicon glyphicon-edit"></span></a></td>

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