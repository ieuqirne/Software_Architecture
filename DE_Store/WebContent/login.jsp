<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DE_Store Login</title>
</head>
<body>

	<form action="Login" method="post">
		<table
			style="background-color: skyblue; margin-left: 20px; margin-left: 20px;">
			<tr>
				<td>Enter Username: </td>
				<td><input type="text" name="uname"></td>
			</tr>
			<tr>
				<td>Enter Password: </td>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td><input class= "button-success pure-button" type="submit" value="Login"></td>
			</tr>
		</table>
	</form>


</body>
</html>