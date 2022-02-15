<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Page</title>
</head>
<body>

<a href="">My Account</a> <a href="">Log out</a>
<h3>Welcome, ${GetUser.firstName}</h3>
	<form:form action="/update/${EditOne.id}" method="put" modelAttribute="Edit">
		<p>
			<form:label path="room_type">Room type:</form:label>
			<form:errors path="room_type"/>
			<form:select path="room_type">
				<option value="${EditOne.id}">${EditOne.room_type}</option>
					<option >Single</option>
					<option >Double</option>
					<option >Triple</option>
					<option >Queen</option>
					<option >King</option>
					<option >Studio</option>
					<option >Master suite </option>
			</form:select>
			
		</p>
		<p>
			<form:label path="services">Services:</form:label>
			<form:errors path="services"/>
			<form:select path="services">
				<option value="${EditOne.id}">${EditOne.services}</option>
					<option >ROSE PETAL TURNDOWN SERVICE</option>
					<option >CHOCOLATE COVERED STRAWBERRIES</option>
					<option >BOTTLE OF HOUSE WINE OR SPARKLING WINE</option>
			</form:select>
		</p>
		<p>
			<form:label path="guests">Guests:</form:label>
			<form:errors path="guests"/>
			<form:input value="${EditOne.guests}" path="guests" type="number" min="0" max="10"/>
		</p>
		<p>
			<form:label path="date">Date:</form:label>
			<form:errors path="date"/>
			<form:input value="${EditOne.date}" path="date" type="date"/>
		</p>
		<input type="submit" value="Update"/>
	</form:form> 
</body>
</html>