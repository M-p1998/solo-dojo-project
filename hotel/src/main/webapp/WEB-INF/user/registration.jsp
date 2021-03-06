<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/style.css" rel="stylesheet" type="text/css">

<title>Register</title>
</head>
<body>


			<header>
				<img class="logo" src="/image/hotelLogo.png"
					width="200" height="50">
				
				<!-- <div class="collapse navbar-collapse" id="navbarNav"> -->
					<nav>
					<ul class="nav_links">
						<li class="nav-item active "><a  
							href="/">Hotel Overview</a></li>
						
				
					</ul>
					</nav>
			</header>
				<!-- </div>
			</div>
		</nav> -->
	<!-- </section> -->
	
	<div class="container">
		<div class="card">
			<div class="box" id="card">
				<div class="card-front">
				<h2>Register</h2>
				 	<form:form action="/registration" method="post" modelAttribute="register">
						<p>
						<form:errors path="firstName" class="error"/>
						<form:input path="firstName" class="input-box" placeholder="First Name"  />
						</p>
						<p>
						<form:errors path="lastName" class="error"/>
						<form:input path="lastName" class="input-box"  placeholder="Last Name"/>
						</p>	
						<p>
						<form:errors path="age" class="error"/>
						<form:input path="age" class="input-box" type="number" min="18" max="100" placeholder="Age" />
						</p>
						<p>
						<form:errors path="email" class="error"/>
						<form:input class="input-box" path="email" placeholder="Email" />
						</p>
						<p>
						<form:errors path="password" class="error"/>
						<form:input class="input-box" type="password" path="password" placeholder="Password" />
						</p>
						<p>
						<form:errors path="password_confirmation" class="error"/>
						<form:input class="input-box" type="password"  placeholder="Password confirmation" path="password_confirmation" />
						</p>
						<input class="btn" type="submit" value="Submit"/>
					</form:form>
					<input class="btn" type="submit" value="I have an account" onclick="openRegister()"/>
				
				</div>
				<div class="card-back">
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