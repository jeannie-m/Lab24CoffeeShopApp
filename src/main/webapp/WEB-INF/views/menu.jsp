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

<title>Menu</title>

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
					<li class="nav-item"><a class="nav-link" href="/">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Login</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/register">Register</a>
					</li>
					<li class="nav-item active"><a class="nav-link" href="#">Menu
					<span class="sr-only">(current)</span></a>
					</li>
				</ul>
			</div>
		</nav>

	</header>
	<!--Main Navigation-->


	<h1>Welcome!</h1>


		
		<div class="container">
			<c:forEach items="${ products }" var="product" varStatus="productCounter">
				<c:if test="${productCounter.count % 3 == 1}">
					<div class="row v-center-parent">
				</c:if>
				<div class="col-md-4">

					<!-- Card -->
					<div class="card v-center-child">

						<!-- Card image -->
						<img class="card-img-top"
							src="/img/productimages/${ product.imagePath }"
							alt="${product.name } image">

						<!-- Card content -->
						<div class="card-body">

							<!-- Title -->
							<h4 class="card-title">
								<a>${product.name}</a>
							</h4>
							<!-- Text -->
							<p class="card-text">${product.description}</p>
							<!-- Button -->
							<a href="#" class="btn btn-primary"><fmt:formatNumber value="${product.price}" type="currency" /></a>
						</div>
					</div>
					<!-- Card -->

				</div>
				<c:if
					test="${productCounter.count % 3 == 0||productCounter.count == fn:length(values)}">
					</div><br>
		</c:if>
		</c:forEach>
	</div>


	<!-- jQuery -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="js/mdb.min.js"></script>
	<!-- Your custom scripts (optional) -->
	<script type="text/javascript"></script>
</body>
</html>