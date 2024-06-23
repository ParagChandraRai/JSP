<%-- 
    Document   : coreTag
    Created on : 25-Jan-2024, 9:28:02 pm
    Author     : Admin
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>JSP Core tag</h1>
        <h4><c:out value="${'parag'}"/></h4>
        
        <c:set var="age" value="${89}"/>
        <c:out value="${age}"/>
        
        <c:set var="income" value="${1200}"/>
        <c:if test="${income>1000}">
            <p>Income is Greater Than 1000</p>
        </c:if>
        
        
    </body>
</html>
