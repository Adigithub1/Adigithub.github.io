<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@  page import="java.util.Date"%>
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
<title>Patient Appointment]</title>
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


<!--     <script type="text/javascript">
        function numberOnly1(txt, e) {
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
    </script> -->
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

<script type="text/javascript">
        function numberOnly(txt, e) {
            var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz .";
            var code;
            if (window.event)
                code = e.keyCode;
            else
                code = e.which;
            var char = keychar = String.fromCharCode(code);
            if (arr.indexOf(char) == -1)
                return false;
            document.getElementById("message1").onkeypress=function(e){
                var e=window.event || e
                var keyunicode=e.charCode || e.keyCode
                //Allow alphabetical keys, plus BACKSPACE and SPACE
                return (keyunicode>=65 && keyunicode<=122&&keyunicode!=91&&keyunicode!=92&&keyunicode!=93&&keyunicode!=94|| keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
                }
            
            
            
            document.getElementById("message2").onkeypress=function(e){
                var e=window.event || e
                var keyunicode=e.charCode || e.keyCode
                //Allow alphabetical keys, plus BACKSPACE and SPACE
                return (keyunicode>=65 && keyunicode<=122&&keyunicode!=91&&keyunicode!=92&&keyunicode!=93&&keyunicode!=94 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
                }
            
            document.getElementById("message3").onkeypress=function(e){
                var e=window.event || e
                var keyunicode=e.charCode || e.keyCode
                //Allow alphabetical keys, plus BACKSPACE and SPACE
                return (keyunicode>=65 && keyunicode<=122&&keyunicode!=91&&keyunicode!=92&&keyunicode!=93&&keyunicode!=94 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
                }
            document.getElementById("message6").onkeypress=function(e){
                var e=window.event || e
                var keyunicode=e.charCode || e.keyCode
                //Allow alphabetical keys, plus BACKSPACE and SPACE
                return (keyunicode>=65 && keyunicode<=122&&keyunicode!=91&&keyunicode!=92&&keyunicode!=93&&keyunicode!=94 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
                }
            document.getElementById("message7").onkeypress=function(e){
                var e=window.event || e
                var keyunicode=e.charCode || e.keyCode
                //Allow alphabetical keys, plus BACKSPACE and SPACE
                return (keyunicode>=65 && keyunicode<=122&&keyunicode!=91&&keyunicode!=92&&keyunicode!=93&&keyunicode!=94 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
                }
            document.getElementById("message8").onkeypress=function(e){
                var e=window.event || e
                var keyunicode=e.charCode || e.keyCode
                //Allow alphabetical keys, plus BACKSPACE and SPACE
                return (keyunicode>=65 && keyunicode<=122&&keyunicode!=91&&keyunicode!=92&&keyunicode!=93&&keyunicode!=94 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
                }
            document.getElementById("message11").onkeypress=function(e){
                var e=window.event || e
                var keyunicode=e.charCode || e.keyCode
                //Allow alphabetical keys, plus BACKSPACE and SPACE
                return (keyunicode>=65 && keyunicode<=122&&keyunicode!=91&&keyunicode!=92&&keyunicode!=93&&keyunicode!=94 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
                }
            document.getElementById("message13").onkeypress=function(e){
                var e=window.event || e
                var keyunicode=e.charCode || e.keyCode
                //Allow alphabetical keys, plus BACKSPACE and SPACE
                return (keyunicode>=65 && keyunicode<=122&&keyunicode!=91&&keyunicode!=92&&keyunicode!=93&&keyunicode!=94 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false
                }
            
        }
    </script>
        <script type="text/javascript">
    
   
    $( function() {
      $( "#datepicker" ).datepicker();
    
    } );
   
    </script>
</head>
<body style="margin-top:10px">
	<form:form method="post" action="saveaddnewpatient12.html" commandName="patient" >
		<div class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<label>Patient Registration</label>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-xs-6">

									<form:label path="RegistNo" for="lname">Registration Number</form:label>
									<form:input path="RegistNo" class="form-control" 
										value="${regno}" readonly="true" />
								</div>



								<div class="col-xs-6">


									<form:label path="PatientName" for="lname">Patient Name</form:label>
									<form:input path="PatientName" class="form-control"  placeholder="Enter PatientName"
										 onkeypress="return numberOnly(this, event)" id="message1"
										minlength="3" maxlength="30" autocomplete="off" value="${s2}"
										
										required="required" />

								</div>
							</div>

							<div class="row">
								<div class="col-xs-6">



									<form:label path="Occupation" for="lname">Occupation</form:label>
									<form:input path="Occupation" class="form-control" placeholder="Enter Occupation"
									 onkeypress="return numberOnly(this, event)" id="message2"
										minlength="3" maxlength="30" autocomplete="off"
										value="${s3}" required="required"  />


								</div>

									<div class="col-xs-6">



										<form:label path="GourdenName" for="lname">Guardian's Name</form:label>
										<form:input path="GourdenName" class="form-control" onkeypress="return numberOnly(this, event)" id="message3"
										minlength="3" maxlength="30" autocomplete="off" placeholder="Enter GuardianName"
											 value="${s4}" required="required" />
									</div>
							
							</div>





							<div class="row">

								<div class="col-xs-6">




									<form:label path="Age" for="lname">Age</form:label>
									<form:input path="Age" id="Mobile_Number" class="form-control" placeholder="Enter Age" 
										required="required" onkeypress="return isNumber(event)"
										minlength="1" maxlength="3" title="Enter Numbers Only"
										onkeyup="allnumeric(document.form1.MobileNumber);"
										value="${s5}" autocomplete="off" />


								</div>



								<div class="col-xs-6" >





									<form:label path="Sex">Gender</form:label>
									<form:select  class="form-control" path="Sex" required="required">

										<form:option value="${s6}">${s6}${ma}</form:option>
										<form:options items="${sxmf}" />

									</form:select>
								</div>
							</div>




							<div class="row">
								<div class="col-xs-6" style="
    padding-left: 4%;
    padding-right:4%;
">

									<div class="row">

										<form:label path="Phone" for="lname">Phone</form:label>
										<form:input path="Phone" id="Mobile_Number"
											class="form-control" required="required" placeholder="Enter PhoneNumber"
											onkeypress="return isNumber(event)" minlength="10"
											maxlength="10"
											onkeyup="allnumeric(document.form1.MobileNumber);"
											value="${s16}" autocomplete="off" />


									</div>
									<div class="row">

										<form:label path="RegistDate" for="lname">Registration Date</form:label>
										<form:input path="RegistDate"  readonly="true"
											class="form-control" value="${time}" placeholder="DD/MM/YYYY"
											required="required" />


									</div>
								</div>
								<div class="col-xs-6">
									<div class="form-group">


										<form:label path="Remarks" for="lname">Remarks</form:label>
										<form:textarea path="Remarks" class="form-control" rows="4" placeholder="Enter Remarks"
											value="${s7}"  />

									</div>
								</div>
							</div>



							<div class="row">
								<div class="col-xs-6">

									<div class="control-group">


										<form:label path="Address" class="control-label">Address Line 1</form:label>
										<form:input path="Address" required="required" value="${s17}" 	minlength="5" 
											placeholder="address line 1" class="form-control" />
										<p class="help-block">Street address, P.O. box, company
											name, c/o</p>


									</div>
								</div>


								<div class="col-xs-6">

									<div class="control-group">



										<form:label path="Address1" class="control-label">Address Line2 </form:label>
										<form:input path="Address1"  value="${s9}" minlength="5" 
											placeholder="address line 2" class="form-control" />
										<p class="help-block">
										<p class="help-block">Apartment, suite , unit, building,
											floor, etc.</p>






									</div>
								</div>
							</div>




							<div class="row">
								<div class="col-xs-6">

									<form:label path="city" class="control-label">City / Town</form:label>
									<form:input path="city" class="form-control" placeholder="city"
									onkeypress="return numberOnly(this, event)" id="message6"
										minlength="3" maxlength="30" autocomplete="off"
										 value="${s10}" required="required" />
									<p class="help-block"></p>

								</div>
								<div class="col-xs-6">
									<div class="control-group">


										<form:label path="Pincode" class="control-label">Zip / Postal Code</form:label>
										<form:input path="Pincode" class="form-control" id="Mobile_Number"
											required="required" onkeypress="return isNumber(event)"
											value="${s11}" placeholder="zip or postal code" minlength="6"
											maxlength="6" />

										<p class="help-block"></p>

									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-6">
									<div class="control-group">


										<form:label path="State" class="control-label">State / Province / Region</form:label>
										<form:input path="State"
											placeholder="state / province / region" class="form-control"
											onkeypress="return numberOnly(this, event)" id="message7"
										minlength="3" maxlength="30" autocomplete="off" value="${s12}" required="required" />
										<p class="help-block"></p>

									</div>
								</div>


								<div class="col-xs-6">
									<div class="control-group">
										<label class="control-label">Country</label>
										<div class="controls">
											<select id="country" name="country" class="form-control" required="required">
												<option value="${s13}" selected="selected" >${s13}${india}</option>
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
												<option>Macedonia, The Former Yugoslav Republic of</option>
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
											</select>
										</div>
									</div>
								</div>
							</div>

							<div class="row">

								<div class="panel panel-primary"
									style="margin-top: 3%; margin-bottom:-19px">
									<div class="panel-heading">
										<label>Appointment Details</label>


									</div>
									<div class="panel-body">
										<div class="row">
											<div class="col-xs-6">


												<form:label path="tokenNo" for="lname">Token No</form:label>
												<form:input path="tokenNo" class="form-control"
													value="${tkn}" readonly="true" required="required" />

											</div>
											<div class="col-xs-6">

												<form:label path="DoctorName">Doctor Name</form:label>
												<form:select path="DoctorName" class="form-control"
													onchange="this.form.submit()" autocomplete="off"
													required="required">

													<form:option value="${s14}">${s14}${india}</form:option>
													<form:options items="${doct}" />

												</form:select>

											</div>
										</div>
										<div class="row">
											<div class="col-xs-6">


												<form:label path="RegFee" for="lname">Registration Fee</form:label>
												<form:input path="RegFee" class="form-control"
													value="${s15}" readonly="true" required="required" />
											</div>
											<div class="col-xs-6">

												<%-- <form:label path="AppointDate">Appointment Date</form:label>
												<form:input path="AppointDate" id="Appointment1" 	onchange="this.form.submit()" autocomplete="off" 
													class="form-control" placeholder="DD/MM/YYYY" 
													required="required" /> --%>
												<form:label path="appointDate">AppointDate</form:label>
												<form:input path="appointDate"  value="${appoint}" class="form-control" onchange="this.form.submit()" id="datepicker" placeholder="DD/MM/YYYY" required="required"/>
											<!-- 	 <input 
													onchange="this.form.submit()" name="data1"
													class="form-control" placeholder="DD/MM/YYYY"
													autocomplete="off" value="" > -->


											</div>



										</div>
									</div>
									<div class="row" style="margin-top: 3%; margin-bottom: 3%"
										align="center">

										<button type="submit" class="btn btn-info" name="add">
											<span class="glyphicon glyphicon-save"></span> Save
										</button>

										<a href="add.html" class="btn btn-info"> <span
											class="glyphicon glyphicon-remove"></span> Close
										</a>



									</div>
								</div>

							</div>


						</div>
					</div>
				</div>
			</div>

		</div>
		

	</form:form>

	<script type="text/javascript">
	$('#Appointment').datepicker({
	    onSelect: function(value, ui) {
	        var today = new Date(), 
	            dob = new Date(value), 
	            age = new Date(today - dob).getFullYear() - 1970;
	        
	        $('#age').text(age);
	        document.getElementById('age').value = age;
	    },
	    maxDate: '+0d',
	    yearRange: '1957:2020',
	    changeMonth: true,
	    changeYear: true
	   
	});
</script>
	<script type="text/javascript">
	$('#Appointment1').datepicker({
	    onSelect: function(value, ui) {
	        var today = new Date(), 
	            dob = new Date(value), 
	            age = new Date(today - dob).getFullYear() - 1970;
	        
	        $('#age').text(age);
	        document.getElementById('age').value = age;
	    },
	    maxDate: '+0d',
	    yearRange: '1957:2020',
	    changeMonth: true,
	    changeYear: true
	   
	});
</script>
</body>


</html>
