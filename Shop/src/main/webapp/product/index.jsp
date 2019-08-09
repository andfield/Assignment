<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


<title>Product Page</title>
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
			<th>Id</th>
			<th>Name</th>
			<th>Photo</th>
			<th>Price</th>
			<th>Buy</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="p" items="${product}"> 
			<tr>
				<th scope="row">${p.id }</td>
				<td>${p.name }</td>
				<td>
					<img src="${p.photo }" width="200" height="200">
				</td>
				<td>${p.price }</td>
				<td align="center">
				<div class="alert alert-primary" role="alert">
					<a href="${pageContext.request.contextPath}/cart?&action=buy&id=${p.id}" class="alert-link">Buy</a>
				</div>
				</td>
			</tr>
		</c:forEach>
	</tbody>
	</table>
</center>
</div>
</body>
</html>