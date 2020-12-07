<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<title>Employee Registration</title>
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet" href="css11/materialize.min.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css11/pagecenter.css"
	media="screen,projection" />
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js11/materialize.js"></script>
<script type="js11/reg1.js"></script>
<script type="text/javascript" async=""
	src="http://127.0.0.1:51143/codelive-assets/bundle.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript">
	function alphaOnly(txt, e) {
		var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.   ";
		var code;
		if (window.event)
			code = e.keyCode;
		else
			code = e.which;
		var char = keychar = String.fromCharCode(code);
		if (arr.indexOf(char) == -1)
			{
			
			alert("enter only Characters");
			return false;
			}
	}
</script>
<script type="text/javascript">
	function idnumber(txt, e) {
		var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz./0123456789- ";
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
<script type="text/javascript">
	function alphaOnlyedu(txt, e) {
		var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz./ ";
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
<script type="text/javascript">

   function isNumber(evt) {
        evt = (evt) ? evt : window.event;
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
            alert("Please enter only Numbers.");
            return false;
        }

        return true;
    }
   
    function ValidateNo() {
        var phoneNo = document.getElementById('txtPhoneNo');

        if (phoneNo.value == "" || phoneNo.value == null || phoneNo.value == "0"|| phoneNo.value == "00"|| phoneNo.value == "000"|| phoneNo.value == "0000"|| phoneNo.value == "00000"|| phoneNo.value == "000000"|| phoneNo.value == "0000000"|| phoneNo.value == "00000000" || phoneNo.value == "000000000" || phoneNo.value == "0000000000" || phoneNo.value == "00000000000" || phoneNo.value == "000000000000" || phoneNo.value == "0000000000000" || phoneNo.value.index) {
            alert("Please enter valid Mobile No.");
            return false;
        }
        if (phoneNo.value.length < 08 || phoneNo.value.length > 13) {
            alert("Mobile No. is not valid");
            return false;
        }

        
        return true;
        }
</script>
<script>
	function myFunction() {
		var x = document.getElementById("myEmail").pattern;
		document.getElementById("demo").innerHTML = x;
	}
</script>
<script type="text/Javascript">

function validateFloatKeyPress(el, evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode;
    var number = el.value.split('.');
    if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    //just one dot
    if(number.length>1 && charCode == 46){
         return false;
    }
    //get the carat position
    var caratPos = getSelectionStart(el);
    var dotPos = el.value.indexOf(".");
    if( caratPos > dotPos && dotPos>-1 && (number[1].length > 1)){
        return false;
    }
    return true;
}

//thanks: http://javascript.nwbox.com/cursor_position/
function getSelectionStart(o) {
	if (o.createTextRange) {
		var r = document.selection.createRange().duplicate()
		r.moveEnd('character', o.value.length)
		if (r.text == '') return o.value.length
		return o.value.lastIndexOf(r.text)
	} else return o.selectionStart
}
</script>
<script type="text/javascript">
    function Validate() {
        var password = document.getElementById("txtPassword").value;
        var confirmPassword = document.getElementById("txtConfirmPassword").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>
<title>Insert title here</title>

<script language="JavaScript">
	function Validate() {
		var s = document.getElementById("image").value;
		if (image != '') {
			var checkimg = image.toLowerCase();
			if (!checkimg.match(/(\.jpg|\.png|\.JPG|\.PNG|\.jpeg|\.JPEG)$/)) {
				alert("Please enter Image File Extensions .jpg,.png,.jpeg");
				document.getElementById("image").focus();
				return false;
			}
		}
		return true;
	}
</script>




<script>
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#image').attr('src', e.target.result).width(99 ).height(99 );
			};

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
<script LANGUAGE="JavaScript">
function ValidateForm(form){
ErrorText= "";
if ( ( form.gender[0].checked == false ) && ( form.gender[1].checked == false ) ) 
{
alert ( "Please choose your Gender: Male or Female" ); 
return false;
}
if (ErrorText= "") { form.submit() }
}
</script>
<script type="text/javascript">
function ConfirmSave()
{
  var x = confirm("Are you sure you want to Register");
  if (x)
      return true;
  else
    return false;
}
</script>
<script type="text/javascript">
var card = document.getElementByName("cards")[0].value;
if (card.value == selectcard) {
    alert("Please select a card type");
}
</script>
<script type="text/javascript">
  function validar()
  {
     var right = 1;

     if(document.getElementById('thilak').value.length==0)
     {
        right = 0;
        document.getElementById('emptymail').innerHTML = "Empty Gender plezz fill  Gender filed";
     }
     if(document.getElementById('bp').value.length==0)
     {
        right = 0;
        document.getElementById('emptypass').innerHTML = "Empty Password";
     }

    if(right == 1)
    {
      document.forms["formu"].submit();
    }

  }
  </script>
<script>
function myFunction() {
    var x;
    if (confirm(" are u sure to register!") == true) {
       
    document.getElementById("btnSubmit").innerHTML = x;
}
</script>
<script>
function myFunction() {
    alert("Hello! I am an alert box!");
}
</script>
<style>
html {
	margin: 0px !important;
}
</style>
<body style="height:700px !important;overflow-y:true" class="cyan loaded">




	<form:form method="post" action="saveRegistrationEmployee.html"
		modelAttribute="user" enctype="multipart/form-data">
		<center>
		
		<h5>${model.msg}</h5>
		
		
			<div class="row">
				<div class="col-xs-12">

					<fieldset
						style="width: 450px;margin-right:5%; margin-left: 1%; border: 1px solid; box-shadow: 2.5px 2px 4px 2.7px black; border-radius: 10px; float: left;">

						<div id="loader-wrapper">
							<div id="loader"></div>
							<div class="loader-section section-left"></div>
							<div class="loader-section section-right"></div>
						</div>
						<div id="login-page" class="row" >
							<div class="col s12 z-depth-4 card-panel">
								<%-- <form class="login-form"> --%>
								<div class="row">
									<div class="input-field col s12 center">
										<img src="images11/symbol---copy.png" alt=""
											class="circle responsive-img valign profile-image-login">
										<h4>Employee Registration</h4>

									</div>
								</div>
								<%--  </form> --%>


								<div class="row">
									<%-- <form class="col s12" style="height:50px"> --%>
									<div class="row">
										<div class="input-field col s6">
											<i class="material-icons prefix">account_circle</i>
											<form:input path="employeeId" id="icon_prefix"
												value="${model.MAXID[0]}" readonly="true" />
											<form:label path="employeeId" for="icon_prefix">Employee ID</form:label>
										</div>
									</div>
									<%--  </form> --%>
								</div>
								<div class="row">
									<%-- <form name="myForm" class="col s12" style="height:50px"> --%>
									<div class="row">
										<div class="input-field col s6">
											<i class="material-icons prefix">assignment_ind</i> <input
												name="name" type="text" class="validate"
												onkeypress="return alphaOnly(this, event)"
												required="required" maxlength="20" minlength="3"
												autocomplete="off">
											<form:label path="name" for="icon_prefix">Employee Name</form:label>


										</div>
									</div>
									<%--  </form> --%>
								</div>

								<%-- <form class="col s12" style="height:30px"> --%>
								<div class="row" style="margin-top: 12px; margin-bottom: 5px;">
									<i class="material-icons prefix"
										style="float: left; margin-left: 14px; font-size: 32px; margin-top: 5px;">supervisor_account</i>


									<div class="input-field col s6"
										style="margin-left: -134px; margin-top: 0px;">
										<form:label
											style="font-size: 1rem; margin-left: 0px; padding-left: 10px;"
											path="gender"></form:label>
										<form:radiobuttons class="with-gap" path="gender" id="thilak"
											required="required" items="${model.gender}" />
										<%-- <label for="test5">Male</label>
									<form:input class="with-gap" path="gender" name="group3"
										type="radio" id="test7" />
									<label for="test7">Female</label> --%>

									</div>
								</div>
								<%--  </form> --%>

								<div class="row">
									<%-- <form class="col s12" style="height:50px"> --%>
									<div class="row">

										<i class="material-icons prefix"
											style="float: left; margin-left: 14px; font-size: 32px; margin-top: 15px;">today</i>

										<form:label path="dob" for="group3"
											style="float: left;/* padding:20px; */font-size:1rem;margin-left: 0px;padding-left: 10px;margin-top: 22px;">Date Of Birth</form:label>
										<div id="dob" class="input-field col s6"
											style="padding-left: 110px; margin-top: -34px"></div>
										<form:input path="dob" type="date" required="required"
											style="margin-left: -4px;width: 85%;" class="datepicker" />
									</div>
									<%-- </form> --%>
								</div>
								<div class="row">
									<%-- <form class="col s12" style="height:30px; margin-top: 20px"> --%>
									<div class="row">
										<div class="input-field col s6">
											<i class="material-icons prefix">contact_phone</i>
											<form:input path="mobnum" id="mobile" type="text"
												class="validate" onkeypress="return isNumber(event)"
												onchange="return ValidateNo()" maxlength="11" minlength="10"
												required="required" autocomplete="off" />
											<form:label path="mobnum" for="icon_prefix">Phone Number 1</form:label>
										</div>
									</div>
									<%-- </form> --%>
								</div>
								<div class="row">
									<%--  <form class="col s12" style="height:30px; margin-top: 20px"> --%>
									<div class="row">
										<div class="input-field col s6">
											<i class="material-icons prefix">call</i>
											<form:input path="mobnum2" id="mobile" type="text"
												class="validate" onkeypress="return isNumber(event)"
												onchange="return ValidateNo()" maxlength="11" minlength="10"
												required="required" autocomplete="off" />
											<form:label path="mobnum2" for="icon_prefix">Phone Number 2</form:label>
										</div>
									</div>
									<%--   </form> --%>
								</div>
								<div class="row">
									<%-- <form class="col s12" style="height:45px; margin-top:0px"> --%>
									<div class="row">
										<div class="input-field col s6">
											<i class="material-icons prefix">email</i>
											<form:input path="email" type="email" maxlength="50"
												required="required" autocomplete="off" />
											<form:label path="email" for="icon_prefix">Email</form:label>
										</div>
									</div>
									<%--  </form> --%>
								</div>
								<div class="row">
									<%--  <form class="col s12" style="height:30px; margin-top: 30px"> --%>
									<div class="row">
										<div class="input-field col s6">
											<i class="material-icons prefix">library_books</i>
											<form:input path="edu" id="qualification" type="text"
												class="validate"
												onkeypress="return alphaOnlyedu(this, event)"
												required="required" maxlength="20" minlength="2"
												autocomplete="off" />
											<form:label path="edu" for="icon_prefix">Qualification</form:label>
										</div>
									</div>
									<%--   </form> --%>
								</div>
								<div class="row">
									<%-- <form class="col s12" style="height:30px; margin-top: 20px"> --%>
									<div class="row">
										<div class="input-field col s6">
											<i class="material-icons prefix">work</i>
											<form:input path="desig" id="designation" type="text"
												class="validate" onkeypress="return alphaOnly(this, event)"
												required="required" maxlength="20" autocomplete="off" />
											<form:label path="desig" for="icon_prefix">Designation</form:label>
										</div>
									</div>
									<%-- </form> --%>
								</div>
								<div class="row">
									<%-- <form class="col s12" style="height:30px; margin-top: 20px"> --%>
									<div class="row">

										<i class="material-icons prefix"
											style="float: left; margin-left: 15px; font-size: 32px; margin-top: 15px;">perm_contact_calendar</i>

										<form:label path="depart"
											style="float: left;/* padding:20px; */font-size:1rem;margin-left: 0px;padding-left: 10px;margin-top: 22px;">Department</form:label>
										<div class="input-field col s6"
											style="padding-left: 110px; margin-top: -34px">
											<div class="row"
												style="margin-top: 29px; border-left-width: -20; margin-left: -55px; margin-bottom: 0px">
												<form:select path="depart" required="required"
													class="validate" id="bp">
													<form:option value="None" required="required">--Department--</form:option>
													<form:options items="${model.depatment}"
														required="required" />
												</form:select>
											</div>
										</div>
									</div>
									<%-- </form> --%>
								</div>
								<div class="row">
									<%-- <form class="col s12" style="height:30px; margin-top: 35px;"> --%>
									<div class="row">
										<div class="input-field col s6">
											<i class="material-icons prefix">picture_in_picture</i>
											<form:input path="addr" id="address" type="text"
												class="validate" rows="4" cols="20" required="required"
												maxlength="100" minlength="3" autocomplete="off" />
											<form:label path="addr" for="icon_prefix">Current Address</form:label>
										</div>
									</div>
									<%-- </form> --%>
								</div>
								<div class="row">
									<%--  <form class="col s12" style="height:30px; margin-top: 45px"> --%>
									<div class="row">
										<div class="input-field col s6">
											<i class="material-icons prefix">tab</i>
											<form:input path="adrees2" id="address" type="text"
												class="validate" rows="4" cols="20" required="required"
												maxlength="100" minlength="3" autocomplete="off" />
											<form:label path="adrees2" for="icon_prefix">Permanent Address</form:label>
										</div>
									</div>
									<%--  </form> --%>
								</div>
								<div class="row">
									<%-- <form class="col s12" style="height:30px; margin-top: 10px"> --%>
									<div class="row">

										<i class="material-icons prefix"
											style="float: left; margin-left: 15px; font-size: 32px; margin-top: 15px;">store</i>

										<form:label path="state" required="required" for="icon_prefix"
											style="float: left;/* padding:20px; */font-size:1rem;margin-left: 0px;padding-left: 10px;margin-top: 22px;">State</form:label>
										<div class="input-field col s6"
											style="padding-left: 110px; margin-top: -34px">


											<div class="container">
												<div class="row">
													<div class="row"
														style="border-left-width: -20; margin-left: -65px; margin-top: 30px; width: 120%;">
														<form:select path="state" required="required"
															id="cardtype">
															<form:option path="state" value="" required="">--State--</form:option>
															<form:options items="${model.state}" path="state" />
														</form:select>
													</div>
												</div>
											</div>
										</div>
										<%-- </form> --%>
									</div>

									<div class="row">
										<%--  <form class="col s12" style="height:30px; margin-top: 70px"> --%>
										<div class="row">
											<div class="input-field col s6">
												<i class="material-icons prefix">room</i>
												<form:input path="country" id="country" type="text"
													class="validate" onkeypress="return alphaOnly(this, event)"
													required="required" maxlength="25" minlength="3"
													autocomplete="off" />
												<form:label path="country" for="icon_prefix"
													required="required">Country</form:label>
											</div>
										</div>
										<%-- </form> --%>
									</div>
									<div class="row">
										<%--  <form class="col s12"  style="height:30px; margin-top: 20px"> --%>
										<div class="row">
											<div class="input-field col s6">
												<i class="material-icons prefix">language</i>
												<form:input path="nation" id="nationality" type="text"
													class="validate" onkeypress="return alphaOnly(this, event)"
													required="required" minlength="3" maxlength="20"
													autocomplete="off" />
												<form:label path="nation" for="icon_prefix">Nationality</form:label>
											</div>
										</div>
										<%--   </form> --%>
									</div>
									<div class="row">
										<%-- <form class="col s12" style="height:30px; margin-top: 20px"> --%>
										<div class="row">

											<i class="material-icons prefix"
												style="float: left; margin-left: 15px; font-size: 32px; margin-top: 15px;">today</i>

											<form:label path="doj" for="group3"
												style="float: left;/* padding:20px; */font-size:1rem;margin-left: 0px;padding-left: 10px;margin-top: 22px;">Date Of Joining</form:label>
											<div class="input-field col s6"
												style="padding-left: 110px; margin-top: -34px"></div>
											<form:input style="margin-left: 1px;width: 83.5%;" path="doj"
												id="doj" type="date" class="datepicker"
												onkeypress="return idnumber(this, event)"
												required="required" maxlength="20" autocomplete="off" />
										</div>
										<%-- </form> --%>
									</div>
									<div class="row">
										<%-- <form class="col s12" style="height:30px; margin-top: 35px"> --%>
										<div class="row">

											<i class="material-icons prefix"
												style="float: left; margin-left: 15px; font-size: 32px; margin-top: 15px;">recent_actors</i>

											<form:label path="idproof" for="group3"
												style="float: left;/* padding:20px; */font-size:1rem;margin-left: 0px;padding-left: 10px;margin-top: 22px;">Type Of ID Proof</form:label>
											<div class="input-field col s6"
												style="padding-left: 110px; margin-top: -34px">
												<script>
         $(document).ready(function() {
         $('select').material_select();
      });
      </script>

												<div class="row">
													<%-- <form class="col s12"> --%>
													<div class="row"
														style="margin-top: 29px; border-left-width: -20; margin-left: -55px; margin-bottom: 0px">
														<form:select path="idproof" type="text"
															required="required" id="cardtype">
															<form:option value="None">Select  IdProof</form:option>
															<form:options items="${model.idproof}"
																required="required" autocomplete="off" />


														</form:select>
													</div>
												</div>
											</div>
											<%-- </form> --%>
										</div>
										<div class="row">
											<%--  <form class="col s12" style=" height: 50px;margin-top: 75px"> --%>
											<div class="row">
												<div class="input-field col s6">
													<i class="material-icons prefix">assignment_ind</i>
													<form:input style="
    margin-bottom: 25px;
"
														path="idnum" id="idno" type="text" class="validate"
														onkeypress="return idnumber(this, event)"
														required="required" maxlength="15" autocomplete="off" />
													<form:label path="idnum" for="icon_prefix">ID Number</form:label>
												</div>
											</div>
											<%--  </form> --%>
										</div>

										<%-- </form> --%>
									</div>
								</div>
							</div>
						</div>

					</fieldset>

				</div>
				<div class="col-xs-6">

					<br>
					<fieldset
						style="width: 400px; border: 1px solid; box-shadow: 2.5px 2px 4px 2.7px black; border-radius: 10px">
						<div class="content">
							<div class="col s12 z-depth-4 card-panel">
								<h2>Add Your Photo</h2>
								<img src="img11/images.png" id="image" class="resize" />
								<table width="250" height="20" align="center" bgcolor=" #F5F5DC">
									<%-- <form action="#"> --%>
									<div class="file-field input-field">
										<div class="btn">
											<span>File</span> <input type="file" multiple
												onchange="readURL(this);">

										</div>
										<div class="file-path-wrapper">
											<input type="file" name="file" onchange="readURL(this);"></input>
											<input class="file-path validate" type="text"
												placeholder="No File Choosen" required="required">
										</div>
									</div>
									<%--  </form> --%>
								</table>
							</div>
						</div>
					</fieldset>

					<br>
					<fieldset
						style="width: 400px; border: 1px solid; box-shadow: 2.5px 2px 4px 2.7px black; border-radius: 10px">

						<div class="content">
							<div class="col s12 z-depth-4 card-panel">
								<table width="350" height="100" align="center"
									bgcolor=" #F5F5DC">

									<h3>User Credentials</h3>
									<tbody>
										<tr>
											<td>
												<div class="row">
													<%--  <form class="col s12" style=" height: 70px; margin-top: 20px"> --%>
													<div class="row">
														<div class="input-field col s6"
															style="height: 30px; margin-top: 20px">
															<i class="material-icons prefix">perm_identity</i>
															<form:input path="username" type="text"
																onkeypress="return alphaOnly(this, event)"
																required="required" maxlength="20" autocomplete="off" />
															<form:label path="username" for="icon_prefix">Username</form:label>
														</div>
													</div>
													</form>
												</div> <script>
										$(document).ready(function() {
											  $("#showHide").click(function() {
											    if ($(".password").attr("type") == "password") {
											      $(".password").attr("type", "text");

											    } else {
											      $(".password").attr("type", "password");
											    }
											  });
											});
										</script>


												<div class="row">


													<div class="row" style="margin-top: 15px;">
														<div class="input-field col s6">
															<i class="material-icons prefix">lock_outline</i>

															<form:input type="password" path="pwd" class="password"
																size="25" id="txtPassword" required="required"
																autocomplete="off" />
															<form:label path="pwd" for="icon_prefix">Password</form:label>
														</div>
													</div>

												</div>


												<div class="row">


													<div class="row" style="margin-top: -34px">
														<div class="input-field col s6">
															<i class="material-icons prefix">lock_outline</i>

															<form:input type="password" path="repwd" class="password"
																size="25" id="txtPassword" required="required"
																autocomplete="off" />
															<form:label path="repwd" for="icon_prefix">Re-Type Password</form:label>
														</div>
													</div>

												</div> <script>
										$(document).ready(function() {
											  $("#showHide1").click(function() {
											    if ($(".password").attr("type") == "password") {
											      $(".password").attr("type", "text");

											    } else {
											      $(".password").attr("type", "password");
											    }
											  });
											});
										</script>
												<div class="row" style="margin-top: -121px">
													<div class="input-field col s6">
														<input type="checkbox" id="showHide1" /> <label
															for="showHide1" id="showHide1Label">Show Password</label>

													</div>
												</div>

												<div class="row" style="margin-top: 14px;">
													<center>
														<div class="input-field col s12">
															<!-- <a  class="btn waves-effect waves-light col s12" onClick="Validate1()">Register Now</a> -->
															<input type="submit" id="btnSubmit" value="submit"
																onclick="return Validate()" value="1" colspan="4"
																onclick="myFunction()" class="btn btn-m btn-blue"
																id="signin_submit" onclick="validar();" /></input>
														</div>
													</center>
												</div>
												<div class="input-field col s12">
													<p class="margin center medium-small sign-up">
														Already have an account? <a href="loginapplication.html">Login</a>
													</p>
												</div>
										</tr>

									</tbody>
								</table>
							</div>
						</div>

					</fieldset>
				</div>
			</div>
		</center>
		</fieldset>
	</form:form>

</body>
</html>
