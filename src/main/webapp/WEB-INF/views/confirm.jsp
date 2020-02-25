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

<title>Success!</title>

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
					<li class="nav-item"><a class="nav-link" href="#">Home
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Login</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/register">Register</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/menu">Menu</a>
					</li>
				</ul>
			</div>
		</nav>
	<!--Main Navigation-->


	  <!-- Intro -->
  <section class="view">

    <div class="row">

      <div class="col-md-6 center">

        <div class="d-flex flex-column justify-content-center align-items-center h-100 well">
          <h1 class="heading display-3 brown-text h1-responsive">Thank you for registering!</h1>
          <div class=" align-items-center">
            <a href="/menu" type="button" class="btn heavy-rain-gradient btn-rounded"><h5 class="h5-responsive font-weight-bold brown-text">Menu</h5></a>
         	<a href="/" type="button" class="btn heavy-rain-gradient btn-rounded"><h5 class="h5-responsive font-weight-bold brown-text">Go Home</h5></a>
         	
          </div>
        </div>

      </div>

      <div class="col-md-6">

        <div class="view">
          <img src="/img/coffee.jpeg" class="img-fluid" alt="smaple image">
          <div class="mask flex-center hm-gradient">
          </div>
        </div>

      </div>

    </div>

  </section>
  <!-- Intro -->

</header>

		


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