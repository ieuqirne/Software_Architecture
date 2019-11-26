<%@page import="com.DEStore.dao.DataAccess" %>
<%@page import="com.DEStore.model.Customer" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Page</title>
</head>
<body> 
	<%
		boolean loyalty;
		String name = request.getParameter("name");
		String surname = request.getParameter("surname");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String loyaltyTem = request.getParameter("loyalty");
			if(loyaltyTem != null){
				loyalty = Boolean.TRUE;
			}else{
				loyalty = Boolean.FALSE;
			}
		
		Customer c = new Customer(0, name, surname, address, email, loyalty, Boolean.TRUE);
		out.print(c);
		DataAccess da = new DataAccess();
		da.addCustomer(c);
		
		response.sendRedirect("AllCustomer");
	%>
</body>
</html>