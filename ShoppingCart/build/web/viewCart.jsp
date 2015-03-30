<%-- 
    Document   : viewCart
    Created on : Mar 30, 2015, 3:26:43 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>View Cart</h3>
        <br>
        <table>
            <tr>
                <td>Product ID</td>                
                <td>Product Name</td>                
                <td>Product Price</td>
            </tr>
            <c:forEach items="${listcart}" var="pro">
                <tr>
                    <td>${pro.getId()}</td>
                    <td>${pro.getName()}</td>
                    <td>${pro.getPrice()}</td>                    
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
