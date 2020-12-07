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
<title>Pharmacy Detail</title>
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
						<label>Pharmacy Details</label>
					</div>
					<div class="panel-body">
					<div class="row">
				
						

					<form action="registerPharmacy.html">
					<div class="col-xs-3">
					<button type="submit" class="btn btn-info">
                    <span class="glyphicon glyphicon-plus"></span> ADD
                     </button>
                     </form>
							</div>



  <%-- <form:form action="searchPharmacy.html" modelAttribute="ph">
							<div class="col-xs-2">
							
								<label style="padding-left: 40px; padding-right: 0px;">Search By  Pharmacy.Name:</label>
							</div>
							<div class="col-xs-3">
							<form:input  path="pharName"  onkeypress="return alphaOnly(this, event)" autocomplete="off" required="required" type="text" class="form-control" />
							 <div class="controls">
                    </div>
								</div>
									<div class="col-xs-4">
									<button style="margin-left:20px" type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-search"></span> Search
    </button>
    <button style="margin-left:50px" type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-list-alt"></span> Report
    </button>
  
    </div>
  </form:form> --%>


							</div>
							
   <div class="bs-example">
    <table class="table table-bordered">
        <thead>
            <tr style=" background-color: #337ab7; color: #f9f8f8">
            
                <th><span class="glyphicon glyphicon-plus-sign"></span> Pharmacy Name</th>
                <th><span class="glyphicon glyphicon-earphone"></span> Phone No</th>
                 <th><span class="glyphicon glyphicon-user"></span> Contact Person Name</th>
                
                <th><span class="glyphicon glyphicon-edit"></span> Edit</th>
     
            </tr>
        </thead>
        <tbody>
        <c:if test="${empty ph }">
        <h4 style="color:red;text-align:center;"></h4>
        </c:if>
        <br>
         <br>
          
         <c:forEach items="${ph}" var="ph">
								<tr>
									<td><c:out value="${ph.pharId}" /></td>
									<td><c:out value="${ph.contactPhNum}" /></td>
									<td><c:out value="${ph.contactPerson}" /></td>
									<td align="center"> <a  class="btn btn-info" 
											href="updatePharmacy.html?pharId=${ph.pharId}"><span
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