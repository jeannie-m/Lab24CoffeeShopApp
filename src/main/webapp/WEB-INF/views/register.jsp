<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>Registration</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Material Design Bootstrap -->
<link rel="stylesheet" href="css/mdb.min.css">
<!-- Your custom styles (optional) -->
<link rel="stylesheet" href="css/style.css">


</head>
<body>
<!--Main Navigation-->
	<header>
	<br>
	<br>
</header>
		<nav
			class="navbar fixed-top navbar-expand-lg navbar-dark brown scrolling-navbar">
			<a class="navbar-brand" href="#"><strong>JaVoracious!</strong></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="/">Home
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Login</a>
					</li>
					<li class="nav-item active"><a class="nav-link" href="/register">Register</a>
					<span class="sr-only">(current)</span>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Menu</a>
					</li>
				</ul>
			</div>
		</nav>

	
	<!--Main Navigation-->
	
	

	<h1>Welcome!</h1>
	<form action="/register" method="post">
	
	<input type="text" name="firstName" placeholder="Your first name">
	<input type="text" name="lastName" placeholder="Your last name">
	<input type="email" name="email" placeholder="Your email">	
	<input type="password" name="password" placeholder="Choose a password">
	<input type="tel" name="phone" placeholder="Your phone#">
	<button type="submit">Register</button>
	</form>
	
</body>
</html>