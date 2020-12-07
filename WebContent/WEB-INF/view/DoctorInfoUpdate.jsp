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
<title>Add Doctor</title>
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
	 document.getElementById("sp").onkeypress=function(e){
		var e=window.event || e
		var keyunicode=e.charCode || e.keyCode
		//Allow alphabetical keys, plus BACKSPACE and SPACE
		return (keyunicode>=65 && keyunicode<=122 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
		}
	document.getElementById("dn").onkeypress=function(e){
		var e=window.event || e
		var keyunicode=e.charCode || e.keyCode
		//Allow alphabetical keys, plus BACKSPACE and SPACE
		return (keyunicode>=65 && keyunicode<=122 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
		}
	document.getElementById("des").onkeypress=function(e){
		var e=window.event || e
		var keyunicode=e.charCode || e.keyCode
		//Allow alphabetical keys, plus BACKSPACE and SPACE
		return (keyunicode>=65 && keyunicode<=122 || keyunicode==8 || keyunicode==32 || keyunicode==9 || keyunicode==46 )? true : false
		} 
	document.getElementById("qual").onkeypress=function(e){
		var e=window.event || e
		var keyunicode=e.charCode || e.keyCode
		//Allow alphabetical keys, plus BACKSPACE and SPACE
		return (keyunicode>=65 && keyunicode<=122 || keyunicode==8 || keyunicode==32 || keyunicode==9 || keyunicode==46 )? true : false
		} 
	
	document.getElementById("ddt").onkeypress=function(e){
		var e=window.event || e
		var keyunicode=e.charCode || e.keyCode
		//Allow alphabetical keys, plus BACKSPACE and SPACE
		return (keyunicode>=65 && keyunicode<=122 || keyunicode==8 || keyunicode==32 || keyunicode==9 )? true : false
		} 
}	
 
function numberOnly1(txt, e) {
    var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ";
    var text = document.getElementById("infoartist").value;
    text = text.replace(/\r?\n/g, '<br />');
    var code;
    if (window.event)
        code = e.keyCode;
    else
        code = e.which;
    var char = keychar = String.fromCharCode(code);
    if (arr.indexOf(char) == -1)
        return false;
    
    
    
}
 

function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}

function testing(val,x){
    maxlen = x;
    if(val.length > maxlen) {
      alert('Limit of characters is '+ maxlen);
      document.chars.tests.value = val.substring(0,maxlen);
    }
  }
function testingnum(val,x){
    maxlen = x;
    if(val.length > maxlen) {
      alert('Limit of numbers is '+ maxlen);
      document.chars.tests.value = val.substring(0,maxlen);
    }
  }
  
  function Minimum(obj,min){
   if (obj.value.length<min) alert('min of '+min);
  }


</script>
</head>
<body style="margin-top:10px">

<c:forEach items="${model.updatedDetails}" var="abc">
	<form:form method="post" action="updatedata.html?id=${abc.id}" commandName="doctor" >
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label> Add Doctor Information</label>
					</div>
					<div class="panel-body">
					<div class="row">
							<div class="col-xs-6">
							
                           <label for="lname">Specialization</label>
                            <form:input type="text" class="form-control" path="specialization" value="${abc.specialization}" onkeypress="return numberOnly(this, event)" minlength="3" maxlength="30" id="sp"></form:input>
                        
                            </div>
							
							<div class="col-xs-6">
							  <label for="lname">Doctor Name</label>
                            <form:input type="text" class="form-control"  path="doctorname" value="${abc.doctorname}" minlength="30" onkeypress="return numberOnly(this, event)" maxlength="30" id="dn"></form:input>
							</div>
							</div>
						<div class="row">
							<div class="col-xs-6">
							
                           <label for="lname">Designation</label>
                            <form:input type="text" class="form-control" path="designation" value="${abc.designation}" minlength="30" onkeypress="return numberOnly(this, event)" maxlength="30" id="des"></form:input>
                            </div>
							
							<div class="col-xs-6">
							  <label for="lname">Qualification</label>
                            <form:input type="text" class="form-control" path="qualification" value="${abc.qualification}" minlength="30" onkeypress="return numberOnlyqual(this, event)" maxlength="30" id="qual"></form:input>
							</div>
							</div>
						<div class="row">
							
							
							<div class="col-xs-6">
								<label>Department Name</label> 
								 <form:select path="departmentname" class="form-control" 
										>
										<form:option value="">${abc.departmentname}</form:option>
										<form:options items="${departmentnames1}" />
									</form:select> 
								
							</div>
							<div class="col-xs-6">
							
                           <label for="lname">Doctor Duty Type</label>
                            <form:input type="text" class="form-control" path="doctordutytype" value="${abc.doctordutytype}" onkeypress="return numberOnly(this, event)" minlength="30" maxlength="30" id="ddt"></form:input>
                            </div>
							</div>
								<div class="row">
							<div class="col-xs-6">
							
                           <label for="lname">Phone No 1</label>
                            <form:input type="text" class="form-control" path="phonenumber1" value="${abc.phonenumber1}" id="extra7" minlength="10"  onblur="testingnum(this.value,13);Minimum(this,10);" name="extra7" onkeypress="return isNumber(event)" maxlength="13"></form:input>
                            </div>
							
							<div class="col-xs-6">
							  <label for="lname">Phone No 2</label>
                            <form:input type="text" class="form-control" path="phonenumber2" value="${abc.phonenumber2}" id="extra7"  minlength="10" onblur="testingnum(this.value,13);Minimum(this,10);" maxlength="13"
name="extra7" onkeypress="return isNumber(event)"></form:input>
							</div>
							</div>
							
					<div class="row">
							<div class="col-xs-6">
							
                           <label for="lname">Consultant Fee</label>
                            <form:input type="text" class="form-control" path="consultantfee" value="${abc.consultantfee}" id="extra7"  onblur="testingnum(this.value,13);Minimum(this,10);" name="extra7" onkeypress="return isNumber(event)" maxlength="15"></form:input>
                            </div>
							
							
							
							<div class="col-xs-6">
							
                           <label for="lname">Address</label>
                             <%-- <form:textarea class="form-control" id="area" value="${abc.address}" rows="3" path="address"  onkeypress="return numberOnly1(this, event)"></form:textarea> --%>
                             <textarea rows="3" cols="88" name="address" style="border-radius:5px;outline-color:silver;" class="form-control" >${abc.address}</textarea>
                            </div>
                            </div>
							
							
						
  
                
                </div>
                <div class="row" style="padding-bottom:3%">
                <center>
                <button  type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-refresh"></span> Update
    </button>
   
     <a href="doctor.html"  class="btn btn-info">
      <span class="glyphicon glyphicon-remove"></span> Close
    </a>
    </center>
              </div>  
               
              
                </div>
                </div>
                </div>
                 

      </div>

                           
            </form:form>
            </c:forEach>                 
                             </body>
                             
				
</html>                      