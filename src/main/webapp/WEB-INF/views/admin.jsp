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

<title>Admin Page JaVoracious</title>
<link rel="icon" type="image/png"
	href="https://i2.wp.com/awakedetroit.com/wp-content/uploads/2019/04/cropped-Favicon.png?ssl=1">
<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Material Design Bootstrap -->
<link rel="stylesheet" href="css/mdb.min.css">
<!-- Bootswatch Swiftly Theme -->
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/flatly/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-yrfSO0DBjS56u5M+SjWTyAHujrkiYVtRYh2dtB3yLQtUz3bodOeialO59u5lUCFF"
	crossorigin="anonymous">

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
					<li class="nav-item"><a class="nav-link" href="/">Home</a></li>
					<li class="nav-item active"><a class="nav-link" href="#">Admin
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="/register">Register</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/menu">Menu
					</a></li>
				</ul>
			</div>
		</nav>

	</header>
	<!--Main Navigation-->


	<h1>Welcome!</h1>



	<div class="container">
		<div class="row">
			<!--  link to add product-->
			<div class="col align-items-center">
				<a href="/add-product-form" class="btn text-align-center">Add a
					Product</a>
			</div>
		</div>
		<c:forEach items="${ products }" var="product"
			varStatus="productCounter">
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
						<p class="card-text">
							<fmt:formatNumber value="${product.price}" type="currency" />
						</p>
						<!-- Button -->
						<a href="/edit-product-form?id=${ product.id }"
							class="btn btn-primary">Edit</a>
						<!--make a controller that takes /edit-product request and directs to form, 
							form directs to controller that makes changes. that controller redirects to /admin-->

						<!-- 						<p>Click the button to display a confirm box.</p>
						<button onclick="myFunction()">Try it</button>						
						<script>
						function myFunction() {
						  confirm("Are you sure?");
						}
						</script> -->
 						<a href="/delete-product?id=${ product.id }"
							class="btn btn-primary" onclick="return confirm('Are you sure?')">Delete</a>
<%-- 						<button onclick="return myFunction(${product.id})">Delete</button>
 --%>
					</div>
				</div>
				<!-- Card -->

			</div>
			<c:if
				test="${productCounter.count % 3 == 0||productCounter.count == fn:length(values)}">
	</div>
	<br>
	</c:if>
	</c:forEach>
	<div class="row">
		<!--  link to add product-->
		<div class="col align-items-center">
			<a href="/add-product-form" class="btn text-align-center">Add a
				Product</a>
		</div>
	</div>
	</div>
	
	
<!-- 	<script>
		function myFunction(id) {
			if (confirm("Are you sure?")){
				return location.href("/delete-product?id=" + id);
			} else {
				return location.href("/admin");
			}
		}
	</script> --> 
<!-- 	<script>
function myFunction(id) {
if (confirm === "Are you sure?"){
location.href("/delete-product?id=" + `${product.id}`
} else {
location.href("/admin")
}
}
</script> -->

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