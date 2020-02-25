<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<h1>Welcome! </h1>
<a href="/register">Register</a>

<div class="container">
		<h1>Products</h1>
		<table class="table">
			<thead>
				<tr>
					<th>Product Name</th><th>Price</th><th>Decription</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="product" items="${products}">
				<tr>
					<td>${product.name}</td>
					<td>${product.price}</td>
					<td>${product.description}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>