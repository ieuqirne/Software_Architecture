<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-/ /W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="StyleSheet.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inventory Control</title>
</head>
<body>
	<h1>Inventory Control</h1>
	<table class="table"  border= "1"  width = "700px" >
		<tr align="left">
			<th>ID</th>
			<th>Name</th>
			<th>Description</th>
			<th>Price</th>
			<th>Stock</th>
			<th>3x2</th>
			<th>Buy1Get1</th>
			<th>Free Delivery</th>
			<th></th>
		</tr>
		<c:forEach items="${AllProduct}" var="p">
			<tr>
				<td>${p.id}</td>
				<td>${p.name}</td>
				<td>${p.description}</td>
				<td>${p.price}</td>
				<td>${p.stock}</td>
				<td><c:if test = "${!p.threetwo}">
         				No
      				</c:if>
      				<c:if test = "${p.threetwo}">
         				Yes
      				</c:if>
      			</td>
				<td><c:if test = "${!p.oneone}">
         				No
      				</c:if>
      				<c:if test = "${p.oneone}">
         				Yes
      				</c:if>
      			</td>
				<td><c:if test = "${!p.freeDelivery}">
         				No
      				</c:if>
      				<c:if test = "${p.freeDelivery}">
         				Yes
      				</c:if>
      			</td>
				<td><a href="EditProduct?id=${p.id}">Edit</a> 
				<a href="DeleteProduct?id=${p.id}">Delete</a></td>
				
			</tr>
		</c:forEach>
	</table>
	<div style="margin-left: 20px;" class="buttons-container">
		<br> <br>
		<a class="button" href="/DE_Store/welcome.jsp">Go Back</a>
		<a class="button" href="/DE_Store/AddProduct.jsp" >Add Product</a>
		
	</div>
</body>