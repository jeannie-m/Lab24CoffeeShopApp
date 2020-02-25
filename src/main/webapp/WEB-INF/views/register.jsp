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
		<br> <br>
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
				<li class="nav-item"><a class="nav-link" href="/">Home </a></li>
				<li class="nav-item"><a class="nav-link" href="#">Login</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/register">Register</a> <span class="sr-only">(current)</span>
				</li>
				<li class="nav-item"><a class="nav-link" href="/menu">Menu</a></li>
			</ul>
		</div>
	</nav>


	<!--Main Navigation-->



	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4">

			<form action="/register" method="post"
				class="border border-light p-5">

				<p class="h4 mb-4 text-center">Register</p>

				<input type="text" name="firstName"
					id="defaultRegisterFormFirstName" class="form-control mb-4"
					placeholder="First name"> <input type="text"
					name="lastName" id="defaultRegisterFormLastName"
					class="form-control mb-4" placeholder="Last name"> <input
					type="email" name="email" id="defaultLoginFormEmail"
					class="form-control mb-4" placeholder="E-mail"> <input
					type="password" name="password" id="defaultLoginFormPassword"
					class="form-control mb-4" placeholder="Password"> <input
					type="text" name="phone" id="defaultRegisterPhonePassword" class="form-control"
					placeholder="Phone number"
					aria-describedby="defaultRegisterFormPhoneHelpBlock"> <small
					id="defaultRegisterFormPhoneHelpBlock"
					class="form-text text-muted mb-4">Definitely NOT optional, unless you like MissingServletRequestParameterExceptions</small>

				<div class="d-flex justify-content-between">
					<div>
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input"
								id="defaultLoginFormRemember"> <label
								class="custom-control-label" for="defaultLoginFormRemember">Remember
								me</label>
						</div>
					</div>
					<div>
						<a href="">Forgot password?</a>
					</div>
				</div>

				<button class="btn btn-info btn-block my-4" type="submit">Create
					Account</button>


			</form>

		</div>
		<div class="col-md-4"></div>
	</div>

	<!-- 	<form action="/register" method="post">
		<input type="text" name="firstName" placeholder="Your first name">
		<input type="text" name="lastName" placeholder="Your last name">
		<input type="email" name="email" placeholder="Your email"> <input
			type="password" name="password" placeholder="Choose a password">
		<input type="tel" name="phone" placeholder="Your phone#">
		<button type="submit">Register</button>
	</form> -->

</body>
</html>