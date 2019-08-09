<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Cart Page</title>
</head>
<body>
<div>
<center><h1 class="display-1">Grand Exchange</h1></center>
</div>
<div class="dropdown-divider"></div>
<div>
<center>
	<table class="table table-bordered">
		<thead class="thead-dark">
		<tr>
			<th>I</th>
			<th>Name</th>
			<th>Photo</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Option</th>
			<th>Sub Total</th>
			
		</tr>
		</thead>
		<c:set var="total" value="0"></c:set>
		<tbody>
		<c:forEach var="item" items="${sessionScope.cart }">
			<c:set var="total" value="${total + item.product.price * item.quantity }"></c:set>
			<tr>
				<th scope="row">${item.product.id }</td>
				<td>${item.product.name }</td>
				<td>
					<img src="${item.product.photo }" width="200" height="200">
				</td>
				<td>${item.product.price}</td>
				<td>${item.quantity }</td>
				<td>${item.product.price * item.quantity }</td>
				<td align="center">
				<div class="alert alert-danger">
					<a href="${pageContext.request.contextPath }/cart?action=remove&id=${item.product.id }"
					onclick="return confirm('Are you sure?')" class="alert-link">Remove</a>
				</div>
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="6" align="right">Total</td>
			<td>${total }</td>
		</tr>
		</tbody>
	</table>
	</center>
	<br>
	<div class="alert alert-dark">
	<a href="${pageContext.request.contextPath }/product" class="alert-link">Continue Shopping</a>
	</div>

</body>
</html>