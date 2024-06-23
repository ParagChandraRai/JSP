<%-- 
    Document   : Add.jsp
    Created on : 23-Jun-2023, 3:16:57 pm
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
        <h1>Addition Of Two Numbers</h1>
        
        <form method="POST" action="Add.jsp">
            Enter 1St Number:<input type="number" name="num1"/><br><br>
            Enter  2nd Number:<input type="number" name="num2"/><br><br>
            <input type="submit" value="Add"/><br><br>
        </form>
        <%
            if (request.getMethod().equalsIgnoreCase("POSt")) {
                int n1 = Integer.parseInt(request.getParameter("num1"));
                int n2 = Integer.parseInt(request.getParameter("num2"));
                out.print("<h1> Sum is</h1>" + (n1 + n2));
            }
        %>
    </body>
</html>
