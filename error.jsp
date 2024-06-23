<%-- 
    Document   : error
    Created on : 24-Jan-2024, 11:05:54 am
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Exception handling Demo</h1>
        <%!
            int n1=100;
            int n2=0;
         %>
         <%
             int div=n1/n2;
         %>
         <h1> Division = <%=div %></h1>
    </body>
</html>
