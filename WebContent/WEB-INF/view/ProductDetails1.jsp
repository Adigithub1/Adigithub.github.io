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
<title>ProductDetail</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
function alphaOnly(txt, e) 
{
	var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789- ";
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
<script>
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
<body style="margin-top:10px">

	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Products</label>
					</div>
					<div class="panel-body">
					
					<div class="row">
					<form action="controllerProductdetails.html">
					<div class="col-xs-2">
					<button type="submit" class="btn btn-info">
                    <span class="glyphicon glyphicon-plus"></span> ADD
                     </button>
                     </div>
                     </form>
							
							<form:form action="searchProductDetail.html" modelAttribute="pd">
							<div class="col-xs-3">
							
								<label style="padding-left: 40px; padding-right: 0px;">Search By Name</label>
							</div>
							<div class="col-xs-3">
							<form:input  path="proName"  onkeypress="return alphaOnly(this, event)" autocomplete="off" required="required" type="text" maxlength="20" minlength="3" class="form-control" />
							</div> 
							
								
									<div class="col-xs-4">
									<button type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-search"></span> Search
    </button>
   <%--  <form:form action="productReport.html" modelAttribute="pd"> --%>
    <button  type="submit" class="btn btn-info">
   <a style="color:white;text-decoration:none" href="productReport.html">   <span class="glyphicon glyphicon-list-alt"></span> Report</a>
    </button><%-- </form:form> --%>
  
    </div>
    </form:form>
 </div>
						</div>
					
							
   <div class="bs-example" style="padding-right:3%;padding-left:3%">
    <table class="table table-bordered">
        <thead>
        
            <tr style="    background-color: #337ab7;
    color: #f9f8f8">
                <th><span class="glyphicon glyphicon-book"></span> Product ID</th>
                <th><span class="glyphicon glyphicon-list-alt"></span> Product Name</th>
                <th><span class="glyphicon glyphicon-inbox"></span> Product Type</th>
                
                <th><span class="glyphicon glyphicon-edit"></span> Edit</th>
                
            </tr>
        </thead>
        <tbody>
<%--         <center>${updateMsg[0]}</center> --%>
        <c:if test="${empty pd }">
        <h5 style="color:red;text-align:center;padding-top:3%">SORRY NO DATA FOUND!</h5>
        </c:if>
       
         <br>
        <c:forEach items="${pd}" var="pd">
            <tr>
                        <td><c:out value="${pd.proCode}" /></td>
						<td><c:out value="${pd.proName}" /></td>
						<td><c:out value="${pd.proType}" /></td>
                <td align="center"><a  class="btn btn-info" href="updateProductDetails.html?proCode=${pd.proCode}"><span class="glyphicon glyphicon-edit"></span></a></td>
                
                
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