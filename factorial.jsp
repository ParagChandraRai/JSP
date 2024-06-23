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
        <h1>Factorial Of Two Numbers</h1>
        <form method="POST" action="factorial.jsp">
            Enter  Number:<input type="number" name="num1"/><br><br>
        
         <input type="submit" value="factorial"/><br><br>
        </form>
        <%!
            int fact(int n)
            {
                 if(n==0)
                   return 1;
                 return n*fact(n-1);
            }
             
        %>
        
        <%
            if(request.getMethod().equalsIgnoreCase("POSt"))
            {
             int n1=Integer.parseInt(request.getParameter("num1"));
             int f=fact(n1);
             out.print("Factorial is"+f);
            } 
         %>
    </body>
</html>
