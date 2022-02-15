<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book a room</title>
<link href="/css/room.css" rel="stylesheet" type="text/css">
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
						<li class="nav-item active "><a class="nav-link" href="#services">Services</a>
						</li>
						<li class="nav-item active"><a class="nav-link" href="#about">About us</a>
						</li>
						<li class="nav-item active"><a class="nav-link" href="#reviews">Reviews</a>
						</li>
						<li class="nav-item active"><a class="nav-link" href="#contact">Contact Us</a></li>
						<li class="nav-item active"><a class="nav-link" href="">My Account</a></li>
						<li class="nav-item active"><a class="nav-link" href="/logout">Log Out</a></li>
						<li class="nav-item active"><a class="nav-link" href="/registration">Sign
								in/Sign up</a></li>
				
					</ul>
				</div>
			</div>
		</nav>
	</section>
	
	<div class="container">
		<div class="card">
			<div class="box" id="card">
			<div class="card-front">
				<h1>Welcome, ${user.firstName}</h1>
				<form:form action="/create" method="post" modelAttribute="createARoom">
					<form:input type="hidden" value="${userId}" path="user"/>
					<p>
						<form:label path="room_type" class="title" >Room type:</form:label>
						<form:errors path="room_type" class="error"/>
						<form:select path="room_type" class="input-box" >
								<option class="title">Queen</option>
								<option class="title">Double</option>
								<option class="title">Triple</option>
								<option class="title">Single</option>
								<option class="title">King</option>
								<option class="title">Studio</option>
								<option class="title">Master suite </option>
						</form:select>
						
					</p>
					<p>
						<form:label path="services" class="title">Services:</form:label>
						<form:errors path="services" class="error"/>
						<form:select path="services" class="input-box">
								
								<option >Spa</option>
								<option >Golf</option>
								<option >Meeting</option>
								<option >Wedding</option>
						</form:select>
					</p>
					<p>
						<form:label path="guests" class="title">Guests:</form:label>
						<form:errors path="guests" class="error"/>
						<form:input path="guests" type="number" min="0" max="5" class="input-box"/>
					</p>
					<p>
						<form:label path="date" class="title">Date:</form:label>
						<form:errors path="date" class="error"/>
						<form:input path="date" type="date" class="input-box" placeholder="Pick a date"/>  
					</p>
					<input type="submit"  class="btn" value="Book a room"/>
				</form:form> 
				</div>
			</div>
		</div>
	</div>
</body>
</html>