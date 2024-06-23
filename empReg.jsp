<%-- 
    Document   : empReg
    Created on : 10-Feb-2024, 11:49:21 am
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
        <h1 >Employee Registration form</h1>
        <form action="empdetails.jsp" method="post">
            <table>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="firstname"/></td>
                </tr>

                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="lastname"/></td>
                </tr>

                <tr>
                    <td>UserName</td>
                    <td><input type="text" name="username"/></td>
                </tr>

                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password"/></td>
                </tr>

                <tr>
                    <td>Address</td>
                    <td><input type="text" name="address"/></td>
                </tr>

                <tr>
                    <td>Contract No</td>
                    <td><input type="text" name="contractno"/></td>
                </tr>

            </table>
            <input type="submit" value="Submit"/>
        </form>
    </body>
</html>
