<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="/css/home.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
<title>Hotel Glow</title>
</head>
<body>

	<section id="nav-bar">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="#"><img src="/image/hotelLogo.png"
					width="200" height="50"></a>

				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active "><a class="nav-link" href="#">Hotel
								Overview</a></li>
						<li class="nav-item active "><a class="nav-link"
							href="#services">Services</a></li>
						<li class="nav-item active"><a class="nav-link" href="#about">About
								us</a></li>
						<li class="nav-item active"><a class="nav-link"
							href="#reviews">Reviews</a></li>
						<li class="nav-item active"><a class="nav-link"
							href="#contact">Contact Us</a></li>
						<li class="nav-item active"><a class="nav-link"
							href="/registration">Sign in/Sign up</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</section>

	<div id="slider">
		<div id="headerSlider" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#headerSlider" data-slide-to="0"></li>
				<li data-target="#headerSlider" data-slide-to="1"></li>
				<li data-target="#headerSlider" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="/image/img2.jpg" class="d-block w-100">
				</div>
				<div class="carousel-item">
					<img src="/image/img3.jpg" class="d-block w-100">
				</div>
				<div class="carousel-item">
					<img src="/image/h4.jpg" class="d-block w-100">
				</div>
			</div>
			<a class="carousel-control-prev" role="button" href="#headerSlider"
				data-slide="prev"> <span class="carousel-control-prev-icon"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" role="button" href="#headerSlider"
				data-slide="next"> <span class="carousel-control-next-icon"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>
	</div>

	<section id="about">
		<div class="container">
			<div class="d-flex">
				<div class="col-md-6">
					<h2>About Us</h2>
					<div class="about-content">When California residents seek
						reprieve from the city, they head to the northern coastline,
						drawing energy from the scenic beaches, untouched nature and fresh
						air. Set amid this tranquility is The Glow, Half Moon Bay, a
						blufftop resort overlooking the ocean. Opportunities to disconnect
						are abundant: walks along the beach, a few rounds of golf, a day
						at the spa, a glass of wine and a colorful sunset. This Forbes
						Five-Star resort focuses on the guest experience and delivers true
						Glow service that creates guests for life.</div>
				</div>
				<div class="col-md-4 text-center">
					<form:form action="/createReviews" method="post"
						modelAttribute="PostAReview">
						<form:label path="reviews"></form:label>
						<form:errors path="reviews" class="text-danger"
							style="font-size: 20px" />
						<form:textarea class="textarea" placeholder="Enter your review..."
							path="reviews" />
						<a href="/reviews"><button class="reviewBtn btn btn-primary">Post
								Review</button></a>
					</form:form>
				</div>
			</div>
		</div>
	</section>

	<!-- services -->
	<section id="services">
		<div class="container">
			<h1>Our Services</h1>
			<div class="row services">
				<div class="col-md-3 text-center">
					<div class="icon">
						<i class="fa fa-bath"></i>
					</div>
					<h3>Spa</h3>
					<p>Warm and comfort the senses with our golden treatment
						featuring turmeric, citrine gemstones, and zeolite that will
						brighten, exfoliate, and invigorate the skin. A rich and decadent
						treat of chocolate and pumpkin will follow that will hydrate and
						nourish.</p>
				</div>
				<div class="col-md-3 text-center">
					<div class="icon">
						<i class="fa fa-trophy"></i>
					</div>
					<h3>Golf</h3>
					<p>From tee to green, the course is kept in excellent
						condition. In addition to our golf course, we have a driving range
						and practice areas equipped with two putting greens and a chipping
						area to help sharpen your skills.</p>
				</div>
				<div class="col-md-3 text-center">
					<div class="icon">
						<i class="fa fa-users"></i>
					</div>
					<h3>Meeting</h3>
					<p>The best ideas need space to breathe; at The Ritz-Carlton,
						Half Moon Bay, space is both bountiful and beautiful. The resort
						offers a different meeting destination, close to Silicon Valley
						yet secluded along the coastline atop a scenic bluff.</p>
				</div>
				<div class="col-md-3 text-center">
					<div class="icon">
						<i class="fa fa-heart"></i>
					</div>
					<h3>Wedding</h3>
					<p>Perched along a scenic coastline with spectacular sunsets,
						The Ritz-Carlton, Half Moon Bay appeals to couples from the Bay
						Area and beyond. Those seeking a wedding destination that combines
						nature and luxury will find them beautifully balanced in our
						venues. </p>
				</div>
			</div>
		</div>
	</section>

	<section id="reviews">
		<h1>Guest reviews</h1>
		<div class="d-flex">
			<div class="hero">
				<div class="review-box">
					<div id="slide">
						<c:forEach items="${write}" var="review">
							<div class="card">
								<p>${review.reviews}</p>
							</div>
						</c:forEach>
					</div>

					<div class="sidebar">
						<img src="/image/up-arrow.png" id="upArrow"> <img
							src="/image/down-arrow.png" id="downArrow">
					</div>
				</div>


			</div>
		</div>
	</section>
	
	<section id="contact">
		<div class="container">
			<h1>Contact Us</h1>
			<div class="col-md-6 contact-info">
				<div class="follow">
					<b>Address: </b> <i class="fa fa-map-marker"
						style="font-size: 36px"></i> 392 San Diego Drive, CA-94555
				</div>
				<div class="follow">
					<b>Email: </b> <i class="fa fa-envelope-o" style="font-size: 36px"></i>
					glow@gmail.com
				</div>
				<div class="follow">
					<b>Phone: </b> <i class="fa fa-phone" style="font-size: 36px"></i>(490)453-4652
				</div>
			</div>
		</div>
	</section>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/js/main.js"></script>

	<script>
		var slide = document.getElementById("slide");
		var upArrow = document.getElementById("upArrow");
		var downArrow = document.getElementById("downArrow");

		let x = 0;

		upArrow.onclick = function() {
			if (x > "-4000") {
				x = x - 300;
				slide.style.top = x + "px";
			}
		}

		downArrow.onclick = function() {
			if (x < 0) {
				x = x + 300;
				slide.style.top = x + "px";
			}
		}
	</script>

</body>
</html>