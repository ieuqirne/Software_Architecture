<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function checkStock(){
		var stock = document.editProduct.stock.value;
		if( stock < 50){
			confirm('Low Stock, the system has generated an order to central inventory');
			edit.Product.submit();
		}else{
			return false;
		}
	}
</script>
<link href="StyleSheet.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit</title>
</head>
<body>
	<h1>Edit Product</h1>
	
		<c:forEach items="${getProductById}" var="p">
			<form name="editProduct" action="ManagerEditProduct.jsp" method="post">
			<table class="table">
				<tr>
					<td><input type="hidden" name="id" value="${p.id}"></td><td></td>
				</tr>
				<tr>
					<td>Name:</td>
					<td><input type="text" value="${p.name}" name="name" style="width: 200px"></td>
				</tr> 
				<tr>
					<td>Description:</td>
					<td><input	type="text" value="${p.description}" name="description"	style="width: 200px"></td> 
				</tr> 
				<tr>
					<td>Price:</td>
					<td><input	type="text" value="${p.price}" name="price"	style="width: 100px"></td>
	 
				</tr> 
				<tr>
					<td>Stock:</td>
					<td><input	type="text" value="${p.stock}" name="stock"	style="width: 100px"></td>
	 
				</tr> 
				<tr>
					<td>3x2 Offer:</td>
					<td><input type="checkbox" name="threetwo" value=1 <c:if test = "${p.threetwo}">
         																			checked
																				</c:if>>  </td>
				</tr>
				<tr>
					<td>Get One, One Free:</td>
					<td><input type="checkbox" name="oneone" value=1 <c:if test = "${p.oneone}">
         																			checked
																				</c:if>>  </td>
				</tr>
				<tr>
					<td>Free Delivery:</td>
					<td><input type="checkbox" name="freeDelivery" value=1 <c:if test = "${p.freeDelivery}">
         																			checked
																				</c:if>>  </td>
				</tr>
				<tr>
					<td></td><td align="right"><input type="submit" value="Update Product" onClick="return checkStock();"></td>
				</tr>	
			</table>
			</form>
		</c:forEach>
	<div style="margin-left: 20px;" class="buttons-container">
		<br> <br>
		<a class="button" href="/DE_Store/welcome.jsp">Go Back</a>
	</div>
</body>
</html>
