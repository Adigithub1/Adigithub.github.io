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
	    document.getElementById("exampleTextarea").onkeypress=function(e){
			var e=window.event || e
			var keyunicode=e.charCode || e.keyCode
			//Allow alphabetical keys, plus BACKSPACE and SPACE
			return (keyunicode>=65 && keyunicode<=122 || keyunicode==8 || keyunicode==32 || keyunicode==9)? true : false;
			}
	
	}
	
</script>

<title>In-Patient Admission</title>

<link type="text/css" rel="stylesheet" href="css/bootstrap.css"
	media="screen,projection" />
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"
	media="screen,projection" />

<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

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
</script>
</head>
<body style="margin-top: 10px">
<c:forEach items="${model.updatedDetails}" var="abc">
	<form:form method="post" action="updatedatainpatient.html?id=${abc.id}" modelAttribute="inp">

		

			<div class="container-fluid">


				<div class="container">
					<div class="row">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<label>In Patient Admission</label>
							</div>

							<div class="panel-body">

								<div class="row">
									<div class="col-xs-6">

										<label>Patient MR.No/Name</label>

										<form:select path="patientmrno" class="form-control" disabled="true">
											<form:option value="${abc.patientmrno}" >${abc.patientmrno}</form:option>
											<form:options items="${mrno}" />
										</form:select>



									</div>

									<div class="col-xs-6">
										<label>Patient Name</label>

										<form:select path="patientname" class="form-control" disabled="true">
											<form:option value="${abc.patientname}">${abc.patientname}</form:option>
											<form:options items="${names}" />
										</form:select>
 <%-- <form:input class="form-control" id="word" readonly="true"
															path="patientname" rows="3"
															onkeypress="return numberOnly(this, event)"
															required="required" value="${abc.patientname}"></form:input> --%>
									</div>
								</div>
								<div class="row">


									<div class="col-xs-6">
										<label>Registered Date</label>

										<form:select path="regdate" class="form-control" disabled="true">
											<form:option value="${rdate}">${abc.regdate}</form:option>
											<form:options items="${date}" />

										</form:select>
										<%-- <form:input class="form-control" id="word" readonly="true"
															path="regdate" rows="3"
															onkeypress="return numberOnly(this, event)"
															required="required" value="${abc.regdate}"></form:input>
 --%>
									</div>

									<div class="col-xs-6">
										<label>Admit Date/Time</label>


										<div class="form-group">
											<div class='input-group date' id='datetimepicker1'>

												<form:input type='text' class="form-control"
													path="admitdateortime" readonly="true"
													value="${abc.admitdateortime}" maxlength="16"/>
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
											>

											<form:option value="${abc.doctorname}">${abc.doctorname}</form:option>
											<form:options items="${doct}" />

										</form:select>
									</div>

									<div class="col-xs-6" >
										<div class="form-group">
											
												<label>Diet</label>
										
												                    
         <form:select path="diet" class="form-control"
																>
																<form:option value="${abc.diet}">${abc.diet}</form:option>
																<form:options items="${diet1}" />
															</form:select>
									
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-4">
										<label>Bed Number</label>

										<form:select path="bedno" class="form-control"
											 id="bednumber"
											onchange="this.form.submit()">
											<form:option value="" >--Select--</form:option>
											<form:options items="${model1.bedNos}" />


										</form:select>
										<%-- <form:select path="bedno" class="form-control" onchange="this.form.submit()">
											<form:option value="">${abc.bedno}</form:option>
											<form:options items="${bedno}" />
										</form:select> --%>
									</div>

									<div class="col-xs-4">
										<label>Room Number</label>

										<%-- <form:select path="roomno" class="form-control"
											>
											<form:option value="${abc.roomno}">${rooms}</form:option>
											<form:options items="${roomno}" />
										</form:select> --%>
										<%-- <form:select path="roomno" class="form-control"
											>
											<form:option value="${abc.roomno}"></form:option>
											<form:options items="${roomno}" />
										</form:select> --%>
										<form:input class="form-control" id="word" readonly="true"
															path="roomno" 
															required="required"></form:input>
										
									</div>

									<div class="col-xs-4">
										<label>Room Rent</label>

										<%-- <form:select path="roomrent" class="form-control"
											>
											<form:option value="${abc.roomrent}">${roomrents}</form:option>
											<form:options items="${roomrent1}" />
										</form:select> --%>
										<%-- <form:select path="roomrent" class="form-control"
											>
											<form:option value="${abc.roomrent}"></form:option>
											<form:options items="${roomrent1}" />
										</form:select> --%>
										<form:input class="form-control" id="word" readonly="true"
															path="roomrent" 
															required="required"></form:input>
									</div>
								</div>
								<div class="row">

									<div class="col-xs-6">

										<div class="control-group">
											<label class="control-label">Concession</label>
											<div class="controls">

												<form:input path="concession" class="form-control"
													id="extra7" name="extra7"
													onkeypress="return isNumber(event)"
													value="${abc.concession}" />
											</div>

										</div>
									</div>

									<div class="col-xs-6" >

										<div class="form-group">
										
												<label>Mode Of payment</label>
											
<form:select path="modeofpayment" class="form-control"
																>
																<form:option value="${abc.modeofpayment}">${abc.modeofpayment}</form:option>
																<form:options items="${mode}"
																 />
															</form:select>
										
										</div>
									</div>
								</div>

								<div class="row">

									<div class="col-xs-6">

										<div class="control-group">
											<label class="control-label">Admission Charge</label>
											<div class="controls">

												<form:input path="admisssioncharge" class="form-control"
												 id="extra7" name="extra7"
													onkeypress="return isNumber(event)"
													value="${abc.admisssioncharge}" />

											</div>
										</div>
									</div>
									<div class="col-xs-6">
										<label class="control-label">Medical Record Charges</label>
										<div class="controls">
											<form:input path="medicalrecordscharge" class="form-control"
												 id="extra7" name="extra7"
												onkeypress="return isNumber(event)"
												value="${abc.medicalrecordscharge}" />
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
													<label>Date Of Advance</label>
													<div class="input-append date form_datetime">

														<form:input type="date" name="date of advance"
															path="dateofadvance" class="form-control"
															 value="${abc.dateofadvance}" maxlength="10"></form:input>
													</div>


												</div>




												<div class="col-xs-6">

													<div class="form-group">
														
															<label>Mode Of Payment</label>
													
<form:select path="modeofpayment1" class="form-control"
																>
																<form:option value="${abc.modeofpayment1}">${abc.modeofpayment1}</form:option>
																<form:options items="${mode2}"
																	 />
															</form:select>
															
														
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-xs-6">
													<div class="row">
														<div class="col-xs-12">
															<label for="lname">Advance Paid</label>

															<form:input path="advancepaid" class="form-control"
																 id="extra7" name="extra7"
																onkeypress="return isNumber(event)"
																value="${abc.advancepaid}" maxlength="10" onkeyup="word.innerHTML=convertNumberToWords(this.value)"/>

														</div>
													</div>
													<div class="row">
														<div class="col-xs-12">
															<label>Alloted By</label>

															<form:label path="allotedby">Alloted By</form:label>
															
															<form:input path="allotedby" class="form-control"
																required="required" value="${abc.allotedby}" />
														</div>
													</div>
												</div>

												<div class="col-xs-6">
													<div class="form-group">
														<label for="lname">Advance In Words</label>


																												<textarea rows="3" cols="88" name="address2111" style="border-radius:5px;outline-color:silver;" class="form-control" id="word" >${abc.advanceinwords}</textarea>

													</div>
												</div>



											</div>

											<div class="row">

												<div class="row" style="margin-top: 3%; margin-bottom: 3%"
													align="center">

													<button type="submit" class="btn btn-info" name="updating">
														<span class="glyphicon glyphicon-refresh"></span> Update
													</button>
													
													<a href="inpatientAddmissionDetails.html" class="btn btn-info" >
													<span class="glyphicon glyphicon-remove"></span> Close
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
