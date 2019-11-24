<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-/ /W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
	function goBack() {
		window.history.back()
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Customers</title>
</head>
<body>
	<h1>All Customer</h1>
	<table border=1
		style="background-color: skyblue; margin-left: 20px; margin-left: 20px;">
		<tr align="left">
			<th>ID</th>
			<th>Name</th>
			<th>Surname</th>
			<th>Address</th>
			<th>L.Card</th>
			<th></th>
		</tr>
		<c:forEach items="${AllCustomer}" var="p">
			<tr>
				<td>${p.id}</td>
				<td>${p.name}</td>
				<td>${p.surname}</td>
				<td>${p.address}</td>
				<td>${p.loyalty}</td>
				<td><a href="edit?id=${p.id}">Edit</a> <a
					href="delete?id=${p.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<div class="buttons-container">
		<br> <br>
		<button onclick="goBack()">Go Back</button>
	</div>
</body>