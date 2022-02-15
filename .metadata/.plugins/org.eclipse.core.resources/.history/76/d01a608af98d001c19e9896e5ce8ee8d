<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/room.css" rel="stylesheet" type="text/css">
<title>Room details</title>
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
	
	<a href="">My Account</a> <a href="/logout">Log out</a>
	<h1>Welcome ${GetUser.firstName}</h1>
	<h1>Property Details</h1>
	<h3>Amenities include</h3>
	<p> Free Parking  Free Wifi  BathTub  Gym   Non-smoking</p>
	
	// if user request service, show it here.
	
	<h3>${One.room_type}, Non Smoking</h3>
	<h1></h1>
	<a href="/edit/${One.id}"><button>Edit</button></a>  
	
	<form action="/delete/${One.id}" method="post">
	    <input type="hidden" name="_method" value="delete">
	    <input type="submit" value="Delete">
	</form>
	
</body>
</html>