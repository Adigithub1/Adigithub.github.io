<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">



function convertNumberToWords(amount) {
    var words = new Array();
    words[0] = '';
    words[1] = 'One';
    words[2] = 'Two';
    words[3] = 'Three';
    words[4] = 'Four';
    words[5] = 'Five';
    words[6] = 'Six';
    words[7] = 'Seven';
    words[8] = 'Eight';
    words[9] = 'Nine';
    words[10] = 'Ten';
    words[11] = 'Eleven';
    words[12] = 'Twelve';
    words[13] = 'Thirteen';
    words[14] = 'Fourteen';
    words[15] = 'Fifteen';
    words[16] = 'Sixteen';
    words[17] = 'Seventeen';
    words[18] = 'Eighteen';
    words[19] = 'Nineteen';
    words[20] = 'Twenty';
    words[30] = 'Thirty';
    words[40] = 'Forty';
    words[50] = 'Fifty';
    words[60] = 'Sixty';
    words[70] = 'Seventy';
    words[80] = 'Eighty';
    words[90] = 'Ninety';
    amount = amount.toString();
    var atemp = amount.split(".");
    var number = atemp[0].split(",").join("");
    var n_length = number.length;
    var words_string = "";
    if (n_length <= 9) {
        var n_array = new Array(0, 0, 0, 0, 0, 0, 0, 0, 0);
        var received_n_array = new Array();
        for (var i = 0; i < n_length; i++) {
            received_n_array[i] = number.substr(i, 1);
        }
        for (var i = 9 - n_length, j = 0; i < 9; i++, j++) {
            n_array[i] = received_n_array[j];
        }
        for (var i = 0, j = 1; i < 9; i++, j++) {
            if (i == 0 || i == 2 || i == 4 || i == 7) {
                if (n_array[i] == 1) {
                    n_array[j] = 10 + parseInt(n_array[j]);
                    n_array[i] = 0;
                }
            }
        }
        value = "";
        for (var i = 0; i < 9; i++) {
            if (i == 0 || i == 2 || i == 4 || i == 7) {
                value = n_array[i] * 10;
            } else {
                value = n_array[i];
            }
            if (value != 0) {
                words_string += words[value] + " ";
            }
            if ((i == 1 && value != 0) || (i == 0 && value != 0 && n_array[i + 1] == 0)) {
                words_string += "Crores ";
            }
            if ((i == 3 && value != 0) || (i == 2 && value != 0 && n_array[i + 1] == 0)) {
                words_string += "Lakhs ";
            }
            if ((i == 5 && value != 0) || (i == 4 && value != 0 && n_array[i + 1] == 0)) {
                words_string += "Thousand ";
            }
            if (i == 6 && value != 0 && (n_array[i + 1] != 0 && n_array[i + 2] != 0)) {
                words_string += "Hundred and ";
            } else if (i == 6 && value != 0) {
                words_string += "Hundred ";
            }
        }
        words_string = words_string.split("  ").join(" ");
    }
    return words_string;
}





	function isNumber(evt) {
		evt = (evt) ? evt : window.event;
		var charCode = (evt.which) ? evt.which : evt.keyCode;
		if (charCode > 31 && (charCode < 48 || charCode > 57)) {
			return false;
		}
		return true;
	}
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
		document.getElementById("word").onkeypress = function(e) {
			var e = window.event || e
			var keyunicode = e.charCode || e.keyCode
			//Allow alphabetical keys, plus BACKSPACE and SPACE
			return (keyunicode >= 65 && keyunicode <= 122 || keyunicode == 8 || keyunicode == 32 || keyunicode == 9 || keyunicode == 46) ? true : false;
		}
		}
	

	$(function() {
		$("#btnSubmit").click(function() {
			var p = $("#patientsmrno");
			if (p.val() == "") {
				//If the "Please Select" option is selected display error.
				alert("Please select an option!");
				return false;
			}
			return true;
		});
	});
	/* $(function() {
		$("#btnSubmit").click(function() {
			var p = $("#patientsnames");
			if (p.val() == "") {
				//If the "Please Select" option is selected display error.
				alert("Please select an option!");
				return false;
			}
			return true;
		});
	});
	$(function() {
		$("#btnSubmit").click(function() {
			var p = $("#registereddate");
			if (p.val() == "") {
				//If the "Please Select" option is selected display error.
				alert("Please select an option!");
				return false;
			}
			return true;
		});
	}); */
	$(function() {
		$("#btnSubmit").click(function() {
			var p = $("#condoctor");
			if (p.val() == "") {
				//If the "Please Select" option is selected display error.
				alert("Please select an option!");
				return false;
			}
			return true;
		});
	});
	$(function() {
		$("#btnSubmit").click(function() {
			var p = $("#bednumber");
			if (p.val() == "") {
				//If the "Please Select" option is selected display error.
				alert("Please select an option!");
				return false;
			}
			return true;
		});
	});
	/* $(function() {
		$("#btnSubmit").click(function() {
			var p = $("#roomnumber");
			if (p.val() == "") {
				//If the "Please Select" option is selected display error.
				alert("Please select an option!");
				return false;
			}
			return true;
		});
	});
	$(function() {
		$("#btnSubmit").click(function() {
			var p = $("#roomrent");
			if (p.val() == "") {
				//If the "Please Select" option is selected display error.
				alert("Please select an option!");
				return false;
			}
			return true;
		});
	}); */
	/* $(function() {
		$("").click(function() {
			var p = $("");
			if (p.val() == "") {
				//If the "Please Select" option is selected display error.
				alert("Please select an option!");
				return false;
			}
			return true;
		});
	}); */
</script>

<title>In-Patient Admission</title>

<link type="text/css" rel="stylesheet" href="css/bootstrap.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css12/bootstrap.min.css"
	media="screen,projection" />

<script type="text/javascript" src="js12/bootstrap.js"></script>
<script type="text/javascript" src="js12/bootstrap.min.js"></script>

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
	$(function() {
		$('#datetimepicker1').datetimepicker();
	});
	//to clear the text in text/dropdown fields
	function myclear() {
		document.getElementById('patientsmrno').value = "";
		document.getElementById('patientsnames').value = "";
		document.getElementById('registereddate').value = "";
		document.getElementById('datetimepicker1').value = "";
	/* document.getElementById('registereddate').value="";
	document.getElementById('registereddate').value="";
	document.getElementById('registereddate').value="";
	document.getElementById('registereddate').value="";
	document.getElementById('registereddate').value="";
	document.getElementById('registereddate').value=""; */
	}

	function words(txt, e) {
		document.getElementById("word").onkeypress = function(e) {
			var e = window.event || e
			var keyunicode = e.charCode || e.keyCode
			//Allow alphabetical keys, plus BACKSPACE and SPACE
			return (keyunicode >= 65 && keyunicode <= 122 || keyunicode == 8 || keyunicode == 32 || keyunicode == 9) ? true : false
		
	}
</script>
</head>
<body style="margin-top: 10px">
<c:forEach items="${model.updatedDetails}" var="abc">


		<form:form method="post"
			action="updatedatainpatient.html?id=${abc.id}" modelAttribute="inp">

			<div class="container-fluid">

 <%-- <c:forEach items="${model.details}" var="abc">  --%>
				<div class="container">
					<div class="row">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<label>In Patient Admission</label>
							</div>

							<div class="panel-body">

								<div class="row">
									<div class="col-xs-6">

									
										<form:label path="patientmrno">Patient MR.No/Name</form:label>
										<form:select required="required" path="patientmrno"
											class="form-control" id="patientsmrno"
											onchange="this.form.submit()">
											<form:option value="" label="--Select--">${abc.patientmrno}</form:option>
											<form:options items="${mrno}" />

										</form:select>



									</div>

									<div class="col-xs-6">
										
										<form:label path="patientname">Patient Name</form:label>
										
									
											<form:select path="patientname" class="form-control"
											 id="patientsnames">
											<form:option value="" label="--Select--">${patientname}</form:option>
											<form:options items="${names}" />
										</form:select>
                                

									</div>
								</div>
								<div class="row">


									<div class="col-xs-6">
									
										<form:label path="regdate">Registered Date</form:label>
										<!-- <div class="input-append date form_datetime">
										<input type="date" name="apointment" class="form-control">
									</div> -->
										<form:input path="regdate" class="form-control"
											 id="registereddate" value="${regdate}" readonly="true"/>
											<%-- <form:option value="" label="--Select--" >${regdate}</form:option>
											<form:options items="${date}" />


										</form:select>
										 --%>

									</div>

									<div class="col-xs-6">
									

										<form:label path="admitdateortime">Admit Date/Time</form:label>
										<div class="form-group">
											<div class='input-group date' id='datetimepicker1'>
												<!-- <input type='text' class="form-control" path="admitdateortime" required="required"  /> <span
												class="input-group-addon"> <span
												class="glyphicon glyphicon-calendar"></span>
											</span> -->
												<form:input type='text' class="form-control"
													path="admitdateortime" required="required" value="${time}"
													maxlength="16" />
												<span class="input-group-addon"> <span
													class="glyphicon glyphicon-calendar"></span>

												</span>
											</div>
										</div>

									</div>
								</div>


								<div class="row">
									<div class="col-xs-6">
										<form:label path="doctorname">Consultant Doctor</form:label>
										<form:select path="doctorname" class="form-control"
											required="required" id="condoctor">
											<%-- <form:option value="${di}" label="--Select--">${di}</form:option> --%>
												<form:option value="" label="--Select--">${abc.consultantdoctor}</form:option>
											<form:options items="${doct}" />

										</form:select>
									</div>

									<div class="col-xs-6" >

										<div class="form-group">
											
												<form:label path="diet">Diet</form:label>
										
												<form:select path="diet" class="form-control"
													required="required" id="dieting">
													<form:option value="" label="--Select--"></form:option>

													<form:options items="${diet1}" />
												</form:select>

											</div>
										</div>
									</div>
								
								<div class="row">
									<div class="col-xs-4">
									<form:label path="bedno">Bed Number</form:label>

										<form:select path="bedno" class="form-control"
											 id="bednumber"
											onchange="this.form.submit()">
											<form:option value="" >--select--</form:option>
											<form:options items="${model1.bedNos}" />


										</form:select>
									</div>

									<div class="col-xs-4">
								<form:label path="roomno">Room Number</form:label>

										<form:input path="roomno" class="form-control"
											 id="roomnumber" value="${model1.roomNumber[0]}" readonly="true"/>
											<%-- <form:option value="" label="--Select--">${rooms}</form:option>

											<form:options items="${roomno}" />


										</form:select> --%>
										<%--  <form:input class="form-control" id="word" readonly="true"
															path="roomno" rows="3"
															onkeypress="return numberOnly(this, event)"
															required="required" value="${rooms}"></form:input> --%>
									</div>

									<div class="col-xs-4">
									<form:label path="roomrent">Room Rent</form:label>

										<form:input path="roomrent" class="form-control"
											 id="roomrent" value="${model1.roomAmount[0]}" readonly="true"/>
											<%-- <form:option value="" label="--Select--">${roomrents}</form:option>
											<form:options items="${roomrent1}" />


										</form:select> --%>
										
										<%--  <form:input class="form-control" id="word" readonly="true"
															path="roomrent" rows="3"
															onkeypress="return numberOnly(this, event)"
															required="required" value="${roomrents}"></form:input> --%>
									</div>
								</div>
								<div class="row">

									<div class="col-xs-6">

										<!-- <div class="control-group"> -->
										<form:label path="concession">Consession</form:label>
											<div class="controls">
												<!-- <input id="address-line2" name="concession" type="text"
												class="form-control" id="extra7" 
name="extra7" onkeypress="return isNumber(event)" required="required"> -->
												<form:input path="concession" class="form-control"
													required="required" id="extra7" name="extra7"
													onkeypress="return isNumber(event)" maxlength="10"
													placeholder="Enter Concession" />
											</div>

										</div>
									</div>

									<div class="col-xs-6" >

										<div class="form-group">
											
										<form:label path="modeofpayment">Mode Of Payment</form:label>
											
										
												<form:select path="modeofpayment" class="form-control"
													required="required" id="modeofpayment">
													<form:option value="" label="--Select--"></form:option>

													<form:options items="${mode}" />
												</form:select>

											</div>
										</div>
									</div>
								

								<div class="row">

									<div class="col-xs-6">

										<div class="control-group">
										<form:label path="admisssioncharge">Admission Charge</form:label>
											<div class="controls">
												<!-- <input id="address-line1" name="adm charges" type="text"
												class="form-control" id="extra7" 
name="extra7" onkeypress="return isNumber(event)" required="required"> -->
												<form:input path="admisssioncharge" class="form-control"
													required="required" id="extra7" name="extra7"
													onkeypress="return isNumber(event)" maxlength="10"
													placeholder="Enter Admission Charge" />

											</div>
										</div>
									</div>
									<div class="col-xs-6">
									<form:label path="medicalrecordscharge">Medical Records Charge</form:label>
										<div class="controls">
											<!-- <input id="city" name="med record charges" type="text"
											class="form-control" id="extra7" 
name="extra7" onkeypress="return isNumber(event)" required="required"> <p class="help-block"></p>-->
											<form:input path="medicalrecordscharge" class="form-control"
												required="required" id="extra7" name="extra7"
												onkeypress="return isNumber(event)" maxlength="10"
												placeholder="Enter Medical Record Charges" />
										</div>
									</div>

								</div>





								<div class="row">

									<div class="panel panel-primary"
										style="margin-top: 3%; margin-bottom: -1.5%">
										<div class="panel-heading">
											<label>Advance Collection</label>


										</div>
										<div class="panel-body">
											<div class="row">
												<div class="col-xs-6">
											<form:label path="dateofadvance">Date Of Advance</form:label>
													<div class="input-append date form_datetime">
														<!-- <input type="date" name="date of advance"
														class="form-control" required="required"> -->
														<form:input type="date" name="dateofadvance"
															path="dateofadvance" class="form-control"
															required="required" maxlength="10"></form:input>
													</div>


												</div>




												<div class="col-xs-6" >

													<div class="form-group">
														
															<form:label path="modeofpayment1">Mode Of Payment</form:label>
														
															
															<form:select path="modeofpayment1" class="form-control"
																required="required" id="modeofpayment1">
																<form:option value="" label="--Select--"></form:option>

																<form:options items="${mode2}" />
															</form:select>
														
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-xs-6">
													<div class="row">
														<div class="col-xs-12">
															<form:label path="advancepaid">Advance Paid</form:label>
															
															<form:input path="advancepaid" class="form-control"
																required="required" id="extra7" name="number"
																onkeypress="return isNumber(event)" maxlength="10"
																placeholder="Enter Advance Paid" onkeyup="word.innerHTML=convertNumberToWords(this.value)"/>
				
														</div>
													</div>
													<div class="row">
														<div class="col-xs-12">
														<form:label path="allotedby">Alloted By</form:label>
															
															<form:input path="allotedby" class="form-control"
																required="required" />
																<%-- <form:option value="" label="--Select--"></form:option>
																<form:options items="${allotedby}" />
															</form:select> --%>
														</div>
													</div>
												</div>

												<div class="col-xs-6">
													<div class="form-group">
							<form:label path="advanceinwords">Advance in Words</form:label>
														<!-- <textarea class="form-control" id="exampleTextarea"
														rows="3" name="adv in words"  onkeypress="return onlyAlphabets(event,this);" required="required"></textarea> -->
																										<form:textarea class="form-control" path="advanceinwords" id="word"
														rows="3" onkeypress="return onlyAlphabets(event,this);" required="required" value="${advanceinwords}"></form:textarea>
												
													</div>
												</div>



											</div>

											<div class="row">

												<div class="row" style="margin-top: 3%; margin-bottom: 3%"
													align="center">

													<button type="submit" class="btn btn-info" id="btnSubmit"
														value="Validate" name="adda">
														<span class="glyphicon glyphicon-save"></span> Save
													</button>


													<a href="inpatientAddmissionDetails.html" class="btn btn-info"> <span
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
				</div>


			</div>

		</form:form>
	 </c:forEach>
</body>


</html>
