<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reviews</title>
</head>
<body>
	
	<h1>All Reviews</h1>
	<c:forEach items="${writeReview}" var="review">
		<p>${review.reviews}</p>
	</c:forEach> 

	<form:form action="/createReviews" method="post" modelAttribute="PostAReview">
		<form:label path="reviews"></form:label>
		<form:errors path="reviews"/>
		<form:textarea path="reviews" />
		<input type="submit" value="Post review"/>
	</form:form>
</body>
</html>