<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="/css/detail.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">

<title>Room details</title>
</head>
<body>

	<header>
		<img class="logo" src="/image/hotelLogo.png" width="200" height="50">

		<nav>
			<ul class="nav_links">
				<li class="nav-item active "><a href="/">Hotel Overview</a></li>
				<li class="nav-item active "><a href="/registration">Sign in/Sign up</a></li>
				<li class="nav-item active "><a href="/logout">Log out</a></li>
			</ul>
		</nav>
	</header>

	<div class="content">
		<h2>Welcome, ${One.user.firstName}</h2>
		<div class="carousel-container">
			<i class="fas fa-arrow-left" id="prevBtn"></i> <i
				class="fas fa-arrow-right" id="nextBtn"></i>
			<div class="carousel-slide">
				<img src="/image/room4.jpg" id="lastClone"> <img
					src="/image/room1.jpg"> <img src="/image/room1.jpg">
				<img src="/image/room2.jpg" alt=""> <img
					src="/image/room2.jpg" alt=""> <img src="/image/room3.jpg">
				<img src="/image/room4.jpg" id="firstClone" alt="">
			</div>
		</div>

<div class="btn">
<h3>Property Details</h3>
			<a href="/edit/${One.id}"><button class="cta">Edit</button></a>

			<form action="/delete/${One.id}" method="post">
				<input type="hidden" name="_method" value="delete"> <input
					class="b" type="submit" value="Delete">
			</form>
		</div>
		<div class="bottom">
			

			<div class="follow">
				<b>Room_type: </b> <i style="font-size: 36px"></i> ${One.room_type}
			</div>
			<div class="follow">
				<b>Guest: </b> <i style="font-size: 36px"></i> ${One.guests}
			</div>
			<div class="follow">
				<b>Service: </b> <i style="font-size: 36px"></i> ${One.services}
			</div>
			<div class="follow">
				<b>Date: </b> <i style="font-size: 36px"></i>
				<fmt:formatDate pattern="yyyy-MM-dd" value="${One.date}" />
			</div>
		
		
		</div>
		
	</div>
	<script src="/js/detail.js"></script>

</body>
</html>