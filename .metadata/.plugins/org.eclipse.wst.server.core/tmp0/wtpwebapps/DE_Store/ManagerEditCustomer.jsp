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
        	boolean loyalty;
            String idTemp = request.getParameter("id");
            int id = Integer.parseInt(idTemp);
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
            DataAccess da = new DataAccess();
            da.edit(id, name, surname, address,email, loyalty);
            
            response.sendRedirect("AllCustomer");
        %>
    </body>
</html>
