<%-- 
    Document   : Font
    Created on : 23-Jun-2023, 4:06:02 pm
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
        <form name="f1" method="post" action="font.jsp">
            Enter Some Text: <input type="text" name="txt"/><br/>
            <br/>
            <input type ="submit" value="Submit"/><br/><br/>
        </form>

        <%
            String inp1 = request.getParameter("txt");
            if (inp1 != null) {
                for (int i = 1; i <= 5; i++) {
                    out.println("<span style='font-size: " + (i + 20) + "px;'>" + inp1 + "</span><br/>");
                }

            }
        %>
    </body>
</html>
