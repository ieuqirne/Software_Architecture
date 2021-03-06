<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="StyleSheet.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer Profile</title>
</head>
<body>
	<h1>Customer Profile</h1>
		<c:forEach items="${getCustomerById}" var="p">
			<table  class="table">
				<tr>
					<td><input type="hidden" name="id" value="${p.id}"></td><td></td>
				</tr>
				<tr>
					<td>Name:</td>
					<td>${p.name}</td>
				</tr> 
				<tr>
					<td>Surname:</td>
					<td>${p.surname}</td> 
				</tr> 
				<tr>
					<td>Address:</td>
					<td>${p.address}</td>
	 
				</tr> 
				<tr>
					<td>Email:</td>
					<td>${p.email}</td>
	 
				</tr> 
				<tr>
					<td>Loyalty Card:</td>
					<td><input type="checkbox" name="loyalty" disabled value=1 <c:if test = "${p.loyalty}">
         																			checked
																				</c:if>>  </td>
				</tr>
				<tr>
					<td></td><td><a class="button1" href="/DE_Store/FinanceApproval.jsp">Finannce Approval</a></td>
				</tr>	
			</table>	
		</c:forEach>
	<div style="margin-left: 20px;" class="buttons-container">
		<br> <br>
		<a class="button" href="/DE_Store/welcome.jsp">Go Back</a>
		<a class="button" href="AllCustomer" >All Customer</a>
	</div>
</body>
</html>
