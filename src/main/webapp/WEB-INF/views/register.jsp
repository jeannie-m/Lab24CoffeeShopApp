<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>
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