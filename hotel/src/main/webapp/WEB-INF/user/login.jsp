<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/style.css" rel="stylesheet" type="text/css">
<title>Log in</title>
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
						<li class="nav-item active"><a class="nav-link" href="#contact">Contact
								Us</a></li>
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
				<h2>Log In</h2>
					<form action="/login" method="post" >
						<p class="valid"><c:out value="${error}" /></p>
						<p>
							<input name="email" class="input-box" placeholder="Enter your email"/>
						</p>
						<p>
							<input name="password" class="input-box" type="password" placeholder="Enter your password" />
						</p>
						<button class="btn">Submit</button>
					</form>
					<!-- <button class="btn" onclick="openLogin()">I am new here</button> -->
					<button class="btn" onclick="openLogin()">I am new here</button>
				</div>
			</div>
		</div>
	</div>
	
				
			<script>
		var card = document.getElementById("card");
			function openRegister(){
				card.style.transform = "rotateY(-180deg)";
		}
			function openLogin(){
				card.style.transform = "rotateY(0deg)";
		}
	</script>
	
	
</body>
</html>