<%@page import="com.DEStore.dao.DataAccess" %>
<%@page import="com.DEStore.model.Customer" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Page</title>
</head>
<body> 
	<%
		boolean loyal;
		String name = request.getParameter("name");
		String surname = request.getParameter("surname");
		String address = request.getParameter("address");
		String loyalty = request.getParameter("loyalty");
		
		
		Customer c = new Customer(0, name, surname, address, loyalty);
		out.print(c);
		DataAccess da = new DataAccess();
		da.addCustomer(c);
		
		response.sendRedirect("AllCustomer");
	%>
</body>
</html>