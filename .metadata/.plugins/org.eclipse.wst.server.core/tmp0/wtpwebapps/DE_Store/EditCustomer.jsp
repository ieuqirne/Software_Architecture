<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit</title>
    </head>
    <body>
        <h1>Edit Customer</h1>
        <table style="background-color: skyblue; margin-left: 20px; margin-left: 20px;">
            <c:forEach items="${getCustomerById}" var="p">
                <form action="ManagerEditCustomer.jsp" method="post">
                    <input type="hidden" name="id" value="${p.id}">
                    Name:<br>
                    <input type="text" value="${p.name}" name="name" style="width: 200px"><br>
                    Surname:<br>
                    <input type="text" value="${p.surname}" name="surname" style="width: 200px"><br>
                    Address:<br>
                     <input type="text" value="${p.surname}" name="address" style="width: 200px"><br>
                    Loyalty Card: 
                    <select name="loyalty">
                        <option value="${p.loyalty}">${p.loyalty}</option>
                        <option value="Yes">Yes</option>
                        <option value="No">No</option>
                    </select><br>
                    <input type="submit" value="Update Customer">
                
                </form>
            </c:forEach>
        </table>
    </body>
</html>
