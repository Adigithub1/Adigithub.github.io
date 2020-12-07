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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="./css/prettify-1.0.css" rel="stylesheet">
<link href="./css/base.css" rel="stylesheet">
<link
	href="//cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/build/css/bootstrap-datetimepicker.css"
	rel="stylesheet">

<script type="text/javascript"
	src="//code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript"
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js"></script>
<script
	src="//cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/src/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript">
            $(function () {
                $('#datetimepicker1').datetimepicker();
            });
        </script>
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
<script type="text/javascript">
	function formsubmit() {
		var Dname = document.getElementById('Doctor_Name').value;
		var Pname = document.getElementById('Patient_Name').value;
		var mno = document.getElementById('Mobile_Number').value;
		
		if (document.form1.Doctor_Name.value == '' || Dname.length < 4
				|| document.form1.Patient_Name.value == '' || Pname.length < 4
				|| document.form1.Mobile_Number.value == '' || mno.length < 10
			
			) {
			message16.innerHTML = "Fill the required field";
			return false;
		} else {
			return true;
		}
	}
	function onlyAlphabets(e) {
		if (window.event) {
			var charCode = window.event.keyCode;
		} else if (e) {
			var charCode = e.which;
		} else {
			return true;
		}
		if ((charCode > 64 && charCode < 91)
				|| (charCode > 96 && charCode < 123)) {
			return true;
		} else {
			return false;
		}
	}
	function allaplh(inputtxt4) {
		var numbers = /^[A-Za-z]{4,10}$/g;
		var message = document.getElementById('message2');
		if (inputtxt4.value.match(numbers)) {
			message.innerHTML = "";
			return true;
		} else {
			message.innerHTML = "Enter Minimum 4 Characters ";
			return false;
		}

	}

	function allaplh1(inputtxt1) {
		var numbers = /^[A-Za-z]{4,10}$/g;
		var message = document.getElementById('message3');
		if (inputtxt1.value.match(numbers)) {
			message.innerHTML = "";
			return true;
		} else {
			message.innerHTML = "Enter Minimum 4 Characters ";
			return false;
		}
	}
	function allnumeric(inputtxt) {
		var numbers = /^[7-9][0-9]{9}$/g;
		var message = document.getElementById('message');
		if (inputtxt.value.match(numbers)) {
			message.innerHTML = "";

			return true;
		} else {
			message.innerHTML = "Enter 10 digit Number ";

			return false;
		}
	}
	function isNumber(evt) {
		evt = (evt) ? evt : window.event;
		var charCode = (evt.which) ? evt.which : evt.keyCode;
		if (charCode > 31 && (charCode < 48) || (charCode > 57)) {
			return false;
		}
		return true;
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
     document.getElementById("Patient_Name").onkeypress=function(e){
        var e=window.event || e
        var keyunicode=e.charCode || e.keyCode
        //Allow alphabetical keys, plus BACKSPACE and SPACE
        return (keyunicode>=65 && keyunicode<=122 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
        }
 
    document.getElementById("Treatment for").onkeypress=function(e){
        var e=window.event || e
        var keyunicode=e.charCode || e.keyCode
        //Allow alphabetical keys, plus BACKSPACE and SPACE
        return (keyunicode>=65 && keyunicode<=122 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
        }
    document.getElementById("city").onkeypress=function(e){
        var e=window.event || e
        var keyunicode=e.charCode || e.keyCode
        //Allow alphabetical keys, plus BACKSPACE and SPACE
        return (keyunicode>=65 && keyunicode<=122 || keyunicode==8 || keyunicode==32 || keyunicode==9 )? true : false
        }

    document.getElementById("state").onkeypress=function(e){
        var e=window.event || e
        var keyunicode=e.charCode || e.keyCode
        //Allow alphabetical keys, plus BACKSPACE and SPACE
        return (keyunicode>=65 && keyunicode<=122 || keyunicode==8 || keyunicode==32 || keyunicode==9 )? true : false
        } 
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
<body  style="margin-top:10px">
	<c:url var="userRegistration" value="saveUser2.html" />
	<form:form id="registerForm" modelAttribute="user" method="post"
		name="form1" action="${userRegistration}"
		onsubmit="return formsubmit()">
		<div class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<label>Patient Appiontment</label>
						</div>
						<div class="panel-body">
<div class="row">
							<div class="col-xs-6">
							
                         <form:label path="patientName">Patient Name</form:label>
									<form:input path="patientName" type="text" class="form-control"
										id="Patient_Name" onkeypress="return numberOnly(this, event)"
										required="required" minlength="3" maxlength="15"
										onblur="testing(this.value,30);Minimum(this,3);"
										autocomplete="off" />
										  </div>
							
							<div class="col-xs-6">
								<form:label path="DoctorName">Doctor Name</form:label>
									<form:select path="DoctorName" items="${doct}"
										class="form-control"></form:select>
								
							</div>
							</div>
					
						<div class="row">
							
							<div class="col-xs-6">
							
                          <form:label path="age">Age</form:label>
									<form:input path="age" id="age"
										onkeypress="return isNumber(event)" minlength="1"
										maxlength="3" class="form-control"
										onkeyup="allnumeric(document.form4.age);" autocomplete="off"></form:input>
                            </div>
							<div class="col-xs-6">
																<form:label path="TokenId">Token Id</form:label>
									<form:input path="TokenId" class="form-control" readonly="true"
										value="${model.tokenMax[0]}" />
								
							</div>
							</div>
					
							 <div class="row">
                <div class="col-xs-6" style="
    padding-top: 12px;
">
                
  					<div class="form-group">
										<div class="col-sm-2">

											<form:label path="gender" class="row">Gender </form:label>
										</div>

										<form:radiobuttons style="margin:3px" path="gender" items="${model.gender}"
											required="required" />

									</div>
   </div>
   </div>

 
						
							
						<div class="row">
							<div class="col-xs-6">
							
                         <form:label path="mobileNo">Mobile Number</form:label>
											<form:input path="mobileNo" id="Mobile_Number"
												required="required" onkeypress="return isNumber(event)"
												minlength="10" maxlength="13"
												onblur="testing(this.value,13);Minimum(this,10);"
												class="form-control" autocomplete="off" />
												  </div>
                           
								<div class="col-xs-3">
											<form:label path="appointmentDate">Appointment Date</form:label>

											<div class="input-append date form_datetime">
												<form:input path="appointmentDate" type="date"
													class="form-control" name="apointment"  onchange="this.form.submit()"/>


											</div>
										</div>
										<div class="col-xs-3">
											<form:label path="appointmentTime">Appointment Time</form:label>

											<div class="input-append date form_datetime">
												<form:input path="appointmentTime" type="time"
													class="form-control" name="apointment" />


											</div>
										</div>
							
                            </div>
                      
						
                          <div class="row">
                          <div class="col-xs-6">
                    <div class="control-group">
												<form:label path="Address">Address</form:label>
												<div class="controls">
													<form:input path="Address" type="text"
														required="required" id="address-line1" maxlength="300" minlength="3"
														placeholder="address line 1" class="form-control"></form:input>
													<p class="help-block">Street address, P.O. box, company
														name, c/o</p>
												</div>
											</div>
                </div>
                <div class="col-xs-6">
                   <div class="form-group">
     <form:label path="Treatmentfor">Treatment for</form:label>
												<form:textarea path="Treatmentfor" rows="2" cols="20"
													id="Treatment for" minlength="3" maxlength="100"
													class="form-control"
													onkeypress="return numberOnly(this, event)"
													required="required" autocomplete="off"></form:textarea>
  </div>
  </div>
                
                </div>
                <div class="row">
                <div class="col-xs-6">
                <div class="control-group">
                   <form:label path="Address2">Address2</form:label>
												<div class="controls">
													<form:input path="Address2" type="text"
														 id="address-line2" minlength="3"
														maxlength="200" placeholder="address line 2"
														class="form-control"></form:input>
													<p class="help-block">Apartment, suite , unit,
														building, floor, etc.</p>
                </div>
                </div>
                </div>
                   <div class="col-xs-6">
                     <label class="control-label">City / Town</label>
                    <div class="controls">
                       <form:input path="city" minlength="3" maxlength="30"
													class="form-control" id="city"
													onkeypress="return numberOnly(this, event)"
													onblur="testing(this.value,15);Minimum(this,3);"
													required="required" autocomplete="off" placeholder="city" />

												<p class="help-block"></p>
                    </div>
               </div>
               </div>
     
                 
                 <div class="row">
                <div class="col-xs-6">
                <div class="control-group">
                    <label class="control-label">State / Province / Region</label>
                    <div class="controls">
                       <form:input path="state" minlength="3" maxlength="30"
														class="form-control"
														onkeypress="return numberOnly(this, event)" id="state"
														onblur="testing(this.value,15);Minimum(this,3);"
														required="required" autocomplete="off"
														placeholder="state / province / region" />

													<p class="help-block"></p>
                    </div>
                </div>
                </div>
                  <div class="col-xs-6">
                 <div class="control-group">
                    <label class="control-label">Zip / Postal Code</label>
                    <div class="controls">
                       <form:input path="pincode" class="form-control"
														required="required" id="postal-code"
														onkeypress="return isNumber(event)" minlength="6"
														maxlength="6"
														onkeyup="allnumeric(document.form1.MobileNumber);"
														onblur="testing(this.value,6);Minimum(this,6);"
														autocomplete="off" placeholder="zip or postal code" />

													<p class="help-block"></p>
                    </div>
                </div>
                </div>
                </div>
                 
                  <div class="row">
                <div class="col-xs-6">
                 <div class="control-group">
                    <label class="control-label">Country</label>
                    <div class="controls">
                      <form:select path="country" id="country" name="country"
														class="form-control">
														<option id="country" selected="selected">(please
															select a country)</option>
														<option>Afghanistan</option>
														<option>Albania</option>
														<option>Algeria</option>
														<option>American Samoa</option>
														<option>Andorra</option>
														<option>Angola</option>
														<option>Anguilla</option>
														<option>Antarctica</option>
														<option>Antigua and Barbuda</option>
														<option>Argentina</option>
														<option>Armenia</option>
														<option>Aruba</option>
														<option>Australia</option>
														<option>Austria</option>
														<option>Azerbaijan</option>
														<option>Bahamas</option>
														<option>Bahrain</option>
														<option>Bangladesh</option>
														<option>Barbados</option>
														<option>Belarus</option>
														<option>Belgium</option>
														<option>Belize</option>
														<option>Benin</option>
														<option>Bermuda</option>
														<option>Bhutan</option>
														<option>Bolivia</option>
														<option>Bosnia and Herzegowina</option>
														<option>Botswana</option>
														<option>Bouvet Island</option>
														<option>Brazil</option>
														<option>British Indian Ocean Territory</option>
														<option>Brunei Darussalam</option>
														<option>Bulgaria</option>
														<option>Burkina Faso</option>
														<option>Burundi</option>
														<option>Cambodia</option>
														<option>Cameroon</option>
														<option>Canada</option>
														<option>Cape Verde</option>
														<option>Cayman Islands</option>
														<option>Central African Republic</option>
														<option>Chad</option>
														<option>Chile</option>
														<option>China</option>
														<option>Christmas Island</option>
														<option>Cocos (Keeling) Islands</option>
														<option>Colombia</option>
														<option>Comoros</option>
														<option>Congo</option>
														<option>Congo, the Democratic Republic of the</option>
														<option>Cook Islands</option>
														<option>Costa Rica</option>
														<option>Cote d'Ivoire</option>
														<option>Croatia (Hrvatska)</option>
														<option>Cuba</option>
														<option>Cyprus</option>
														<option>Czech Republic</option>
														<option>Denmark</option>
														<option>Djibouti</option>
														<option>Dominica</option>
														<option>Dominican Republic</option>
														<option>East Timor</option>
														<option>Ecuador</option>
														<option>Egypt</option>
														<option>El Salvador</option>
														<option>Equatorial Guinea</option>
														<option>Eritrea</option>
														<option>Estonia</option>
														<option>Ethiopia</option>
														<option>Falkland Islands (Malvinas)</option>
														<option>Faroe Islands</option>
														<option>Fiji</option>
														<option>Finland</option>
														<option>France</option>
														<option>France, Metropolitan</option>
														<option>French Guiana</option>
														<option>French Polynesia</option>
														<option>French Southern Territories</option>
														<option>Gabon</option>
														<option>Gambia</option>
														<option>Georgia</option>
														<option>Germany</option>
														<option>Ghana</option>
														<option>Gibraltar</option>
														<option>Greece</option>
														<option>Greenland</option>
														<option>Grenada</option>
														<option>Guadeloupe</option>
														<option>Guam</option>
														<option>Guatemala</option>
														<option>Guinea</option>
														<option>Guinea-Bissau</option>
														<option>Guyana</option>
														<option>Haiti</option>
														<option>Heard and Mc Donald Islands</option>
														<option>Holy See (Vatican City State)</option>
														<option>Honduras</option>
														<option>Hong Kong</option>
														<option>Hungary</option>
														<option>Iceland</option>
														<option>India</option>
														<option>Indonesia</option>
														<option>Iran (Islamic Republic of)</option>
														<option>Iraq</option>
														<option>Ireland</option>
														<option>Israel</option>
														<option>Italy</option>
														<option>Jamaica</option>
														<option>Japan</option>
														<option>Jordan</option>
														<option>Kazakhstan</option>
														<option>Kenya</option>
														<option>Kiribati</option>
														<option>Korea, Democratic People's Republic of</option>
														<option>Korea, Republic of</option>
														<option>Kuwait</option>
														<option>Kyrgyzstan</option>
														<option>Lao People's Democratic Republic</option>
														<option>Latvia</option>
														<option>Lebanon</option>
														<option>Lesotho</option>
														<option>Liberia</option>
														<option>Libyan Arab Jamahiriya</option>
														<option>Liechtenstein</option>
														<option>Lithuania</option>
														<option>Luxembourg</option>
														<option>Macau</option>
														<option>Macedonia, The Former Yugoslav Republic
															of</option>
														<option>Madagascar</option>
														<option>Malawi</option>
														<option>Malaysia</option>
														<option>Maldives</option>
														<option>Mali</option>
														<option>Malta</option>
														<option>Marshall Islands</option>
														<option>Martinique</option>
														<option>Mauritania</option>
														<option>Mauritius</option>
														<option>Mayotte</option>
														<option>Mexico</option>
														<option>Micronesia, Federated States of</option>
														<option>Moldova, Republic of</option>
														<option>Monaco</option>
														<option>Mongolia</option>
														<option>Montserrat</option>
														<option>Morocco</option>
														<option>Mozambique</option>
														<option>Myanmar</option>
														<option>Namibia</option>
														<option>Nauru</option>
														<option>Nepal</option>
														<option>Netherlands</option>
														<option>Netherlands Antilles</option>
														<option>New Caledonia</option>
														<option>New Zealand</option>
														<option>Nicaragua</option>
														<option>Niger</option>
														<option>Nigeria</option>
														<option>Niue</option>
														<option>Norfolk Island</option>
														<option>Northern Mariana Islands</option>
														<option>Norway</option>
														<option>Oman</option>
														<option>Pakistan</option>
														<option>Palau</option>
														<option>Panama</option>
														<option>Papua New Guinea</option>
														<option>Paraguay</option>
														<option>Peru</option>
														<option>Philippines</option>
														<option>Pitcairn</option>
														<option>Poland</option>
														<option>Portugal</option>
														<option>Puerto Rico</option>
														<option>Qatar</option>
														<option>Reunion</option>
														<option>Romania</option>
														<option>Russian Federation</option>
														<option>Rwanda</option>
														<option>Saint Kitts and Nevis</option>
														<option>Saint LUCIA</option>
														<option>Saint Vincent and the Grenadines</option>
														<option>Samoa</option>
														<option>San Marino</option>
														<option>Sao Tome and Principe</option>
														<option>Saudi Arabia</option>
														<option>Senegal</option>
														<option>Seychelles</option>
														<option>Sierra Leone</option>
														<option>Singapore</option>
														<option>Slovakia (Slovak Republic)</option>
														<option>Slovenia</option>
														<option>Solomon Islands</option>
														<option>Somalia</option>
														<option>South Africa</option>
														<option>South Georgia and the South Sandwich
															Islands</option>
														<option>Spain</option>
														<option>Sri Lanka</option>
														<option>St. Helena</option>
														<option>St. Pierre and Miquelon</option>
														<option>Sudan</option>
														<option>Suriname</option>
														<option>Svalbard and Jan Mayen Islands</option>
														<option>Swaziland</option>
														<option>Sweden</option>
														<option>Switzerland</option>
														<option>Syrian Arab Republic</option>
														<option>Taiwan, Province of China</option>
														<option>Tajikistan</option>
														<option>Tanzania, United Republic of</option>
														<option>Thailand</option>
														<option>Togo</option>
														<option>Tokelau</option>
														<option>Tonga</option>
														<option>Trinidad and Tobago</option>
														<option>Tunisia</option>
														<option>Turkey</option>
														<option>Turkmenistan</option>
														<option>Turks and Caicos Islands</option>
														<option>Tuvalu</option>
														<option>Uganda</option>
														<option>Ukraine</option>
														<option>United Arab Emirates</option>
														<option>United Kingdom</option>
														<option>United States</option>
														<option>United States Minor Outlying Islands</option>
														<option>Uruguay</option>
														<option>Uzbekistan</option>
														<option>Vanuatu</option>
														<option>Venezuela</option>
														<option>Viet Nam</option>
														<option>Virgin Islands (British)</option>
														<option>Virgin Islands (U.S.)</option>
														<option>Wallis and Futuna Islands</option>
														<option>Western Sahara</option>
														<option>Yemen</option>
														<option>Yugoslavia</option>
														<option>Zambia</option>
														<option>Zimbabwe</option>
													</form:select>
                    </div>
                </div>
                </div>
                
						     	<div class="col-xs-6" style="
    padding-top: 25px;
">
<center>
									 		<button type="submit"
												class="btn btn-info" name="module3">
												<span class="glyphicon glyphicon-save"></span> Save
											</button>
 <button type="button" class="btn btn-info">
    <a href="bca.html" style="text-decoration:none !important;color:white"> <span class="glyphicon glyphicon-remove"></span> Close</a> 
    </button>
							
</center>

										</div>   
                </div>
                 
						
										
										</div>
									</div>


								</div>
							</div>
						</div>
					 
					</div>
				</div>
	</form:form>


</body>


</html>
