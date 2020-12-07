<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RoomRegistration</title>
</head>
<body>
<form:form method="POST" action="searchbyRoomno1.html"	modelAttribute="room">
								
								<h4>${message[0]}</h4>
								
								
								<form:label path="floorname">SelectFloor:</form:label>
								<form:select path="floorname">
									<form:option value="floorname">--SelectLocation--</form:option>
									<form:options items="${locations}" required="required"
										autocomplete="off" />
								</form:select>
								
								<form:label path="roomno">RoomNo:</form:label>
								<form:input path="roomno" />
								<input type="submit" value="Add">
</form:form>


</body>
</html>