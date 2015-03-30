<%-- 
    Document   : viewDetails
    Created on : Mar 30, 2015, 2:03:39 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Product Details</h3>
        <br>
        <table >
            <tr>
                <td>${product.getId()}</td>                
                <td>${product.getName()}</td>                
                <td>${product.getDescription()}</td>                
                <td>${product.getPrice()}</td>
            </tr>
        </table>
    </body>
</html>
