<%@page import="com.DEStore.dao.DataAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        	boolean threetwo;
	        boolean oneone;
	        boolean freeDelivery;
            String idTemp = request.getParameter("id");
            int id = Integer.parseInt(idTemp);
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            String priceTem = request.getParameter("price");
            float price = Float.valueOf(priceTem);
            String stockTem = request.getParameter("stock");
			int stock = Integer.valueOf(stockTem);
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
			
			
			
            DataAccess da = new DataAccess();
            da.editProduct(id, name, description, price, stock,threetwo ,oneone ,freeDelivery);
            
            response.sendRedirect("AllProduct");
        %>
    </body>
</html>
