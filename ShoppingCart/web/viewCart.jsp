<%-- 
    Document   : viewCart
    Created on : Mar 30, 2015, 3:26:43 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="com.example.i18n.text" />
<!DOCTYPE html>
<html lang="${language}">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <select id="language" name="language" onchange="submit()">
                <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
                <option value="vi" ${language == 'vi' ? 'selected' : ''}>Tieng Viet</option>
            </select>
        </form>
        <h3>View Cart</h3>
        <br>
        <table>
            <tr>
                <label for="productId"><fmt:message key="viewCart.label.productID" />:</label>
                <td id="productId">Product ID</td>
                <label for="productName"><fmt:message key="viewCart.label.productName" />:</label>
                <td id="productName">Product Name</td>                
                <label for="productPrice"><fmt:message key="viewCart.label.productPrice" />:</label>
                <td id="productPrice">Product Price</td>
                
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
