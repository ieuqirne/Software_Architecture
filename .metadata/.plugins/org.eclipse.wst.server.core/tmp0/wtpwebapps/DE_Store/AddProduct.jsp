
<!DOCTYPE html>
<html>
<head>
<link href="StyleSheet.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Add Customer</title>
</head>
<body>
	<h1>Add Product</h1>
	<form action=ManagerAddProduct.jsp method="post">
		<table class="table">
			<tr>
				<td>Name: </td>
				<td><input type="text" name="name" style="width: 200px"></td>
			</tr>
			<tr>
				<td>Description: </td>
				<td><input type="text" name="description" style="width: 200px"></td>
			</tr>
			<tr>
				<td>Price: </td>
				<td>� <input type="text" name="price" style="width: 100px"></td>
			</tr>
			<tr>
				<td>Stock: </td>
				<td><input type="text" name="stock" style="width: 100px"></td>
			</tr>
			<tr>
				<td>3x2 Offer: </td>
				<td><input type="checkbox" name="threetwo" value=1></td>
			</tr>
			<tr>
				<td>Get One, One Free:</td>
				<td><input type="checkbox" name="oneone" value=1></td>
			</tr>
			<tr>
				<td>Free Delivery:</td>
				<td><input type="checkbox" name="freeDelivery" value=1></td>

			<tr>
				<td></td><td align="right"><input type="submit" value="Add Product"></td>
			</tr>
		</table>
	</form>
	<div style="margin-left:20px;" class="buttons-container" >
		<br> <br>
		<a class="button" href="/DE_Store/welcome.jsp">Go Back</a>
		<a class="button" href="AllProduct" >All Products</a>
	</div>
	<!--  Complete Interface addCustomer. -->
</body>
</html>