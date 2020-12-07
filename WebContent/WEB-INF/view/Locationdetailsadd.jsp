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
<title>Location Details</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"  media="screen,projection"/>
 <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>

<script type="text/javascript">
        function numberOnly(txt, e) {
            var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@- ";
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
function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}
    </script>
<script>
    function isNumberKey(evt)
    {
      var charCode = (evt.which) ? evt.which : event.keyCode;
     console.log(charCode);
        if (charCode != 46 && charCode != 45 && charCode > 31
        && (charCode < 48 || charCode > 57))
         return false;

      return true;
    }
    </script>
<script>
$('input[name="checkListItem"]').focus(function(){
    $(this).val(""); // clear the value
});
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
     document.getElementById("floorName").onkeypress=function(e){
        var e=window.event || e
        var keyunicode=e.charCode || e.keyCode
        //Allow alphabetical keys, plus BACKSPACE and SPACE
        return (keyunicode>=65 && keyunicode<=122 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
        }
}
 </script>

</head>
<body>

<c:url var="userLocation" value="saveUser.html" />
<form:form  modelAttribute="user" method="post" id="exampleTextarea"
				action="${userLocation}"
				onsubmit="return formsubmit()">
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<label>Location Details</label>
					</div>
					
					<div class="panel-body">
					<div class="row">
							<div class="col-xs-6">
					<form:label path="floorName">Floor Name</form:label>
							<form:select path="floorName"  type="text" class="form-control"  
								placeholder=" floorName" maxlength="16"   onpaste="return false;">
								<form:option value="groundfloor">Ground flour</form:option>
								<form:option value="firstfloor">First flour</form:option>
								<form:option value="secondfloor">Second flour</form:option>
								<form:option value="thirdfloor">Third flour</form:option>
								<form:option value="fourthfloor">Fourth flour</form:option>
								<form:option value="fifthfloor">Fifth flour</form:option>
								<form:option value="sixthfloor">Sixth flour</form:option>
								</form:select> 
                            </div>
				  	
                                <div class="col-xs-6">
                   <div class="form-group">
    
     <form:label path="remarks">Remarks</form:label>
    
    <form:input path="remarks" rows="5" cols="20"
	class="form-control" id="exampleTextarea"  minlength="3" maxlength="30"  ></form:input>
  </div>
  </div>
								
 <div class="row" style="margin-top:3%;margin-bottom:3%" align="center">
					  
                <button  type="submit" class="btn btn-info">
      <span class="glyphicon glyphicon-save"></span> Save
    </button>
   
     <a href="indexxv.html"  class="btn btn-info">
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