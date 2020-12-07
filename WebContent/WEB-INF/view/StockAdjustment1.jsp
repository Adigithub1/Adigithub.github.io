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
<title>Stock</title>
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
						<label>Stock Adjustment</label>
					</div>
					<div class="panel-body">
				
                    <div class="panel-body">
                    <form:form action="searchProduct.html" modelAttribute="user">
					<div class="row">
					<div class="col-xs-1"></div>
					<div class="col-xs-4"><label for="lname" style="padding-top:3%">Search By Product Name</label></div>
							<div class="col-xs-3">
							
                           
                           <form:input  path="prname" type="text" onkeypress="return alphaOnly(this, event)"
		minlength="3" maxlength="20"  required="required" class="form-control"/>
                          <!-- <input type="text" name="registration date"  class="form-control"> -->
                            </div><div class="col-xs-3"><center>
									<button type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-search"></span> Search
    </button></center></div>
                            </div>
                        
							
									</form:form>
									
									
    	<div class="row" style="padding-left:250px;padding-right:250px;padding-top:3px;">
    <%-- <center>
    <div class="alert alert-success"><span class="glyphicon glyphicon-ok"></span> Record Inserted Successfully......</div>
    </center> --%>
				</div>	
    		<br>
    		<br>	
							
   <div class="bs-example">
    <table class="table table-bordered">
        <thead>
            <tr style="    background-color: #337ab7;
    color: white;">
                <th><span class="glyphicon glyphicon-book"></span> Pro.Code</th>
                <th><span class="glyphicon glyphicon-user"></span> Pro Name</th>
                <th><span class="glyphicon glyphicon-list"></span> UOM</th>
                 <th><span class="glyphicon glyphicon-list-alt"></span> Batch No</th>
                <th><span class="glyphicon glyphicon-calendar"></span> Exp Date</th>
                  <th><span class="glyphicon glyphicon-list"></span> Avail.Qty</th>
                <th><span class="glyphicon glyphicon-edit"></span> Modify Qty</th>
             
            </tr>
        </thead>
        <tbody>
        <br>
        <c:if test="${empty user}">
				
				 <h5 style="color:red;text-align:center;">SORRY NO DATA FOUND!</h5>
				
				</c:if>
				
        <c:forEach items="${user}" var="user">
          <tr>
          
          <td><c:out value="${user.id}" /></td>
						<td><c:out value="${user.prname}" /></td>
						<td><c:out value="${user.uom}" /></td>
						<td><c:out value="${user.bno}" /></td>
						<td><c:out value="${user.expdate}" /></td>
						<td><c:out value="${user.avlqty}" /></td>
						<%-- <td><c:out value="${abc.photo}" /></td> --%>
						<td align=center><a  class="btn btn-info" href="stockEdit.html?id=${user.id}"><span class="glyphicon glyphicon-edit"></span></a>
          </tr>
          </c:forEach>
        </tbody>
    </table>
</div>
					</div>

				</div>

			</div>
		</div>
		</div>
		</div>
</body>
</html>