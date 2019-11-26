<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-/ /W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="StyleSheet.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Report</title>
</head>
<body>
	<h1>All Report</h1>
	<table class="table">
		<tr align="left">
			<th>ID</th>
			<th>Customer ID</th>
			<th>Price</th>
			<th>Date</th>
		</tr>
		<c:forEach items="${AllReport}" var="p">
			<tr>
				<td>${p.id}</td>
				<td>${p.customerID}</td>
				<td>${p.total}</td>
				<td>${p.date}</td>
				
			</tr>
		</c:forEach>
	</table>
	<div style="margin-left: 20px;" class="buttons-container">
		<br> <br>
		<a class="button" href="/DE_Store/welcome.jsp">Go Back</a>
		<a class="button" href="/DE_Store/AddProduct.jsp" >Add Product</a>
		
	</div>
</body>