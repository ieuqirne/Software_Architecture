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
            String idTemp = request.getParameter("id");
            int id = Integer.parseInt(idTemp);
            String name = request.getParameter("name");
            String surname = request.getParameter("surname");
            String address = request.getParameter("address");
            String loyalty = request.getParameter("loyalty");

            DataAccess da = new DataAccess();
            da.edit(id, name, surname, address, loyalty);
            
            response.sendRedirect("AllCustomer");
        %>
    </body>
</html>
