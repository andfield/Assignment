<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Product Page</title>
</head>
<body>
<center><h1>Grand Exchange</h1></center>
<center>
	<table cellpadding="2" cellspacing="2" border="1">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Photo</th>
			<th>Price</th>
			<th>Buy</th>
		</tr>
		<c:forEach var="p" items="${product}">
			<tr>
				<td>${p.id }</td>
				<td>${p.name }</td>
				<td>
					<img src="${p.photo }" width="120">
				</td>
				<td>${p.price }</td>
				<td align="center">
					<a href="${pageContext.request.contextPath }/cart?&action=buy&id=${p.id}">Buy</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</center>
</body>
</html>