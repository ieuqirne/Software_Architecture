<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
<link href="StyleSheet.css" rel="stylesheet">
</head>
<body>
	<%
		response.setHeader("Cache-Control",
				"no-cache, no-store, must-revalidate"); //HTTP 1.1

		response.setHeader("Pragma", "no-cache"); //HTTP 1.0

		response.setHeader("Expires", "0"); //Proxies

		if (session.getAttribute("username") == null) {
			response.sendRedirect("login.jsp");
		}
	%>
	<h1 style="color:#05086C" >Welcome ${username}</h1>
	<div class="buttons-container">
		<a href="/DE_Store/addCustomer.html" class="button">Add Customer</a> 
		<a href="AllCustomer" class="button">Customer Listed</a>
		<a href="/DE_Store/AddProduct.jsp" class="button">Add Product</a> 
		<a href="AllProduct" class="button">Inventory Control</a>
		<a href="AllReport"	class="button">Reports and Analysis</a>
	</div>
	<div class="buttons-container">
	<br><br>
		<form action="Logout">
			<input type="submit" value="Logout">
		</form>
	</div>

</body>
</html>