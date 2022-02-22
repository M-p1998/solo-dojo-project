<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/room.css" rel="stylesheet" type="text/css">
<title>Edit Page</title>
</head>
<body>

	<header>
		<img class="logo" src="/image/hotelLogo.png" width="200" height="50">
		<nav>
			<ul class="nav_links">
				<li class="nav-item active "><a href="/">Hotel Overview</a></li>
				<li class="nav-item active "><a href="/">Sign in/Sign up</a></li>
				<li class="nav-item active "><a href="/logout">Log out</a></li>
			</ul>
		</nav>
	</header>

	<div class="container">
		<div class="card">
			<div class="box" id="card">
				<div class="card-front">
					<h3>Welcome, ${EditOne.user.firstName}</h3>
					<form:form action="/update/${EditOne.id}" method="put" modelAttribute="Edit">
					<form:input type="hidden" value="${userId}" path="user"/>
						<p>
							<form:label path="room_type">Room type:</form:label>
							<form:errors path="room_type" />
							<form:select path="room_type" class="input-box">
								
								<option class="title">One Bedroom suite</option>
								<option class="title">Presidential suite</option>
								<option class="title">Luxury suite</option>
								<option class="title">Signature suite</option>
								<option class="title">Master suite</option>
							</form:select>
						</p>
						<p>
							<form:label path="services">Services:</form:label>
							<form:errors path="services" />
							<form:select path="services" class="input-box">
							
								<option>Spa</option>
								<option>Golf</option>
								<option>Meeting</option>
								<option>Wedding</option>
							</form:select>
						</p>
						<p>
							<form:label path="guests">Guests:</form:label>
							<form:errors path="guests" />
							<form:input value="${EditOne.guests}" path="guests" type="number"
								min="0" max="10" class="input-box" />
						</p>
						<p>
							<form:label path="date">Date:</form:label>
							<form:errors path="date" class="error" />
							<form:input value="${EditOne.date}" path="date" type="date"
								class="input-box" />
						</p>
						<input type="submit" class="btn" value="Update" />
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>