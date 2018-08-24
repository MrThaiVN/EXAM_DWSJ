<%-- 
    Document   : productmanagement
    Created on : Aug 24, 2018, 7:16:55 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <table border="1">
            <tr>
                <td>name</td>
                <td>price</td>
                <td>quantity</td>
            </tr>
            <c:forEach items="${product}" var="u">
                <tr>
                    <td>
                        <c:out value="${u.name}"/>
                    </td>
                    <td>
                        <c:out value="${u.price}"/>
                    </td>
                    <td>
                        <c:out value="${u.quantity}"/>
                    </td>
                    

                </tr>
            </c:forEach>
        </table>
        <h1>
            Create product !
        </h1>
        <form action="Create" method="POST">
            name: <input type="text" name="name"/>
            price: <input type="text" name="price"/>
            quantity: <input type="text" name="quantity"/>
            <input type="submit" value="Create"/>
        </form>
    </body>
</html>
