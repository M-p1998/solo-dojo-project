<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/review.css" rel="stylesheet" type="text/css">
<title>Reviews</title>
</head>
<body>
	
	
	<section id="nav-bar">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="#"><img src="/image/hotelLogo.png"
					width="200" height="50"></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<i class="fa-solid fa-bars"></i>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active "><a class="nav-link" 
							href="#">Hotel Overview</a></li>
						
						<li class="nav-item active"><a class="nav-link" href="/registration">Sign
								in/Sign up</a></li>
				
					</ul>
				</div>
			</div>
		</nav>
	</section>
	
	<div class="container">
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
	</div>
</body>
</html>