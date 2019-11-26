<%@page import="com.DEStore.dao.DataAccess" %>
<%@page import="com.DEStore.model.Product" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Page</title>
</head>
<body> 
	<%
			boolean threetwo = Boolean.FALSE;
			boolean oneone = Boolean.FALSE;
			boolean freeDelivery = Boolean.FALSE;
 			String name = request.getParameter("name");
 			String description = request.getParameter("description");
 			String priceTem = request.getParameter("price");
 			float price;
 			try{
 				price = Float.valueOf(priceTem);
 			}catch(NumberFormatException e){
 				price = 0;
 			}
 			String stockTem = request.getParameter("stock");
 			int stock;
 			try{
 				stock = Integer.valueOf(stockTem);
 			}catch(NumberFormatException e){
 				stock = 0;
 			}
 			String threetwoTem = request.getParameter("threetwo");
 			if(threetwoTem != null){
 				threetwo = Boolean.TRUE;
 			}else{
 				threetwo = Boolean.FALSE;
 			}
 			
 			String oneoneTem = request.getParameter("oneone");
 			if(oneoneTem != null){
 				oneone = Boolean.TRUE;
 			}else{
 				oneone = Boolean.FALSE;
 			}
 			
 			String freeDeliveryTem = request.getParameter("freeDelivery");
 			if(freeDeliveryTem != null){
 				freeDelivery = Boolean.TRUE;
 			}else{
 				freeDelivery = Boolean.FALSE;
 			}
 			
 			Product p = new Product(0, name, description, price, stock, threetwo, oneone, freeDelivery);
 			out.print(p);
 			DataAccess da = new DataAccess();
 			da.addProduct(p);
 			
 			response.sendRedirect("AllProduct");
 	%>
</body>
</html>