<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Information</title>
</head>
<body>

<h1>Here is your account information</h1>
 <%-- <c:choose>
 <c:when test="">
 	<h1>You have booked (2) room on </h1> 
 </c:when>
 <c:otherwise>
 	<h2>You have not booked yet!</h2>
 </c:otherwise>
 </c:choose> --%>

<a href="/room"><button>Book a room</button></a>
<p>First Name: ${user.firstName}
<p>Last Name: ${user.lastName}
<p>Age: ${user.age}
<p>Email: ${user.email}
<p>Phone Number: ${user.phone_number}



</body>
</html>