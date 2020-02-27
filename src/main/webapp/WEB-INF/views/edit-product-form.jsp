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
<title>Edit a Product - JaVoracious!</title>
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
				<li class="nav-item"><a class="nav-link" href="/register">Register</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="/menu">Menu</a></li>
			</ul>
		</div>
	</nav>


	<!--Main Navigation-->



	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4">

			<form action="/edit-product-form" method="post"
				class="border border-light p-5">

				<p class="h4 mb-4 text-center">Edit a Product</p>
				<div>
				
				<input type="hidden" name="id" value="${product.id}" />
				</div>
				<div>
				
				<input type="hidden" name="imagePath" value="${product.imagePath}" />
				</div>
				<div>
				<label>Product Name</label>
					<input type="text" name="name" value="${ product.name }"
						class="form-control mb-4">
				</div>

				<div>
				<label>Product Description</label>
					<input type="text" name="description" class="form-control mb-4"
						value="${product.description }">
				</div>

				<div>
				<label>Quantity in Stock</label>
					<input type="number" name="quantity" class="form-control mb-4"
						value="${product.quantity }">
				</div>

				<div>
				<label>Per Unit Retail Price</label>
					<input type="number" name="price" class="form-control mb-4"
						value="${product.price }">
				</div>




				<button class="btn btn-info btn-block my-4" type="submit">Edit
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