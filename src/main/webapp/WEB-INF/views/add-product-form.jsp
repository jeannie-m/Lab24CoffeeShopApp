

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
<title>Add a Product - JaVoracious!</title>
<link rel="icon" 
      type="image/png" 
      href="https://i2.wp.com/awakedetroit.com/wp-content/uploads/2019/04/cropped-Favicon.png?ssl=1">
<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Material Design Bootstrap -->
<link rel="stylesheet" href="css/mdb.min.css">
 <!-- Bootswatch Swiftly Theme -->
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/flatly/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-yrfSO0DBjS56u5M+SjWTyAHujrkiYVtRYh2dtB3yLQtUz3bodOeialO59u5lUCFF" crossorigin="anonymous">

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
				<li class="nav-item"><a class="nav-link" href="/admin">Admin</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/register">Register</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="/menu">Menu</a></li>
			</ul>
		</div>
	</nav>


	<!--Main Navigation-->



	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4">

			<form action="/add-product-form" method="post"
				class="border border-light p-5">

				<p class="h4 mb-4 text-center">Add a Product</p>

				<input type="text" name="name"
					class="form-control mb-4"
					placeholder="Product Name"> 
					<input type="text"
					name="description" 
					class="form-control mb-4" placeholder="Product Description"> 
					<input
					type="number" name="quantity"
					class="form-control mb-4" placeholder="Quantity"> 
					<input
					type="number" name="price" 
					class="form-control mb-4" placeholder="Price"> 


			

				<button class="btn btn-info btn-block my-4" type="submit">Create
					Product</button>


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