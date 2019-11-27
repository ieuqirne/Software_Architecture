<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="StyleSheet.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Customer</title>
</head>
<body>
	<h1>Edit Customer</h1>
	<form action="ManagerEditCustomer.jsp" method="post">
		<c:forEach items="${getCustomerById}" var="p">
			
			<table  class="table">
				<tr>
					<td><input type="hidden" name="id" value="${p.id}"></td><td></td>
				</tr>
				<tr>
					<td>Name:</td>
					<td><input type="text" value="${p.name}" name="name" style="width: 200px"></td>
				</tr> 
				<tr>
					<td>Surname:</td>
					<td><input	type="text" value="${p.surname}" name="surname"	style="width: 200px"></td> 
				</tr> 
				<tr>
					<td>Address:</td>
					<td><input	type="text" value="${p.address}" name="address"	style="width: 200px"></td>
	 
				</tr> 
				<tr>
					<td>Email:</td>
					<td><input	type="text" value="${p.email}" name="email"	style="width: 200px"></td>
	 
				</tr> 
				
				<tr>
					<td>Loyalty Card:</td>
					<td><input type="checkbox" name="loyalty" value=1 <c:if test = "${p.loyalty}">
         																			checked
																				</c:if>>  </td>
				</tr>
				<tr>
					<td></td><td align="right"><input type="submit" value="Update Customer"></td>
				</tr>	
			</table>	
		</c:forEach>
	</form>
	<div style="margin-left: 20px;" class="buttons-container">
		<br> <br>
		<a class="button" href="/DE_Store/welcome.jsp">Go Back</a>
	</div>
</body>
</html>
