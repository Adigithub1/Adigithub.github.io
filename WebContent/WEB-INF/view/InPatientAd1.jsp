<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Patient Appointment</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"
	media="screen,projection" />
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
function confirmAction() {
	if (!confirm("Are You Sure You want to Edit")) {
		return false;
	}
}
function numberOnly(txt, e) {
 
	 document.getElementById("message1").onkeypress=function(e){
			var e=window.event || e
			var keyunicode=e.charCode || e.keyCode
			//Allow alphabetical keys, plus BACKSPACE and SPACE
			return (keyunicode>=65 && keyunicode<=122 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
			}
}
function numberOnly1(txt, e) {
    /* var arr = "0123456789-ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ";
    var code;
    if (window.event)
        code = e.keyCode;
    else
        code = e.which;
    var char = keychar = String.fromCharCode(code);
    if (arr.indexOf(char) == -1)
        return false; */
	 document.getElementById("message2").onkeypress=function(e){
			var e=window.event || e
			var keyunicode=e.charCode || e.keyCode
			//Allow alphabetical keys, plus BACKSPACE and SPACE
			return (keyunicode>=65 && keyunicode<=122 ||keyunicode>=48 && keyunicode<=57 || keyunicode==8 || keyunicode==32 || keyunicode==9||keyunicode==45)? true : false
			}
}

$(document).ready(function(){
    $('.sendButton').prop('disabled',true);
    $('#message1').keyup(function(){
        $('.sendButton').prop('disabled', this.value == "" ? true : false);     
    })
     
});  

$(document).ready(function(){
    $('.sendButton').prop('disabled',true);
    $('#message2').keyup(function(){
        $('.sendButton').prop('disabled', this.value == "" ? true : false);     
    })
     
});  
function myclear(){
	document.getElementById('message1').value="";
	document.getElementById('message2').value="";
}
</script>

</head>
<body style="margin-top: 10px" onload="myclear()">

	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>In Patient Admission</label>
					</div>
					<div class="panel-body">

						<form action="pageinpatient.html">
							<button type="submit" class="btn btn-info">
								<span class="glyphicon glyphicon-plus"></span> ADD
							</button>
						</form>
						<form action="search.html">
							<div class="row">
								<div class="row">
									<div class="col-xs-3"></div>

									<div class="col-xs-6">


										<label for="lname">Search By Patient Name</label> <input
											type="text" class="form-control" maxlength="30" name="pname"
											name="textField" onkeypress="return numberOnly(this, event)"
											id="message1">
									</div>
									<div class="col-xs-3"></div>

								</div>
								<div class="row">
									<div class="col-xs-3"></div>
									<div class="col-xs-6">

										<label for="lname">Search By MR.No</label> <input type="text"
											class="form-control" maxlength="30" name="pmrnum"
											onkeypress="return numberOnly1(this, event)" id="message2">
									</div>
									<div class="col-xs-3"></div>
								</div>

								<div class="row" style="margin-top: 3%">
									<center>
										<button type="submit" class="btn btn-info" class="sendButton">
											<span class="glyphicon glyphicon-search"></span> Search
										</button>
										<button type="submit" class="btn btn-info" class="sendButton">
											<a style="color: white; text-decoration: none"
												href="InpatientReport.html"> <span
												class="glyphicon glyphicon-list"></span> Report
											</a>
										</button>
									</center>

								</div>
						</form>





						<div class="row"
							style="padding-left: 250px; padding-right: 250px; padding-top: 20px;">
							<center>
								<c:if test="${!empty abc}">

									<div class="alert alert-success">Total In Patient[${id}]
									</div>
								</c:if>
							</center>
						</div>
						<div class="bs-example"
							style="padding-left: 3%; padding-right: 3%">
							<c:if test="${empty abc}">
								<h5 style="color: red;" align="center">SORRY NO DATA FOUND!</h5>
							</c:if>
							<table class="table table-bordered">
								<thead>
									<tr style="background-color: #337ab7; color: #f9f8f8">
										<th><span class="glyphicon glyphicon-book"></span>
											Patient MR.No</th>
										<!--  <th><span class="glyphicon glyphicon-tags"></span> Patient No</th> -->
										<th><span class="glyphicon glyphicon-user"></span>
											Patient Name</th>
										<th><span class="glyphicon glyphicon-bed"></span> Bed No</th>
										<th><span class="glyphicon glyphicon-calendar"></span>
											Admission Date</th>
										<th><span class="glyphicon glyphicon-edit"></span> Edit</th>
										<th><span class="glyphicon glyphicon-print"></span>
											Print</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${abc}" var="abc">
										<%-- <tr><td>Total<c:out value="${abc.id}"></c:out></td></tr> --%>
										<tr
											style="background-color: white; color: black; text-align: center;"
											height="30px">
											<td><c:out value="${abc.patientmrno}" /></td>

											<td><c:out value="${abc.patientname}" /></td>
											<td><c:out value="${abc.bedno}" /></td>
											<td><c:out value="${abc.admitdateortime}" /></td>

											<td><form action="updatedinpatient.html?id=${abc.id}"
													method="post">
													<input type="hidden" name="mrno" value="${abc.patientmrno}">
													<button class="btn btn-info" onclick="return confirmAction();">
														<span class="glyphicon glyphicon-edit"></span>
													</button>
												</form> <!-- <input type="submit" value="Edit"  onclick="return confirmAction();" class="submitClass" /> -->
											<td><form action="reportinpatient.html?id=${abc.id}"
													method="post">
													<input type="hidden" name="mrno" value="${abc.patientmrno}">
													<button   class="btn btn-info">
														<span class="glyphicon glyphicon-print"></span>
													</button>
												</form></td>
											</td>


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