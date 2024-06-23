<%-- 
    Document   : empdetails
    Created on : 10-Feb-2024, 12:08:21 pm
    Author     : Admin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3307/stu" user="root" password="system" var="ds"></sql:setDataSource>
        <%
            String first_name = request.getParameter("firstname");
            String last_name = request.getParameter("lastname");
            String user_name = request.getParameter("username");
            String password = request.getParameter("password");
            String address = request.getParameter("address");
            String contactno = request.getParameter("contractno");
            Connection con = null;
            PreparedStatement ps = null;
            String sql = "INSERT INTO emp (first_name, last_name, user_name, password, address, contactno) VALUES (?, ?, ?, ?, ?, ?)";
            try {
                con = DriverManager.getConnection("jdbc:mysql://localhost:3307/stu", "root", "system");
                ps = con.prepareStatement(sql);
                ps.setString(1, first_name);
                ps.setString(2, last_name);
                ps.setString(3, user_name);
                ps.setString(4, password);
                ps.setString(5, address);
                ps.setString(6, contactno);
                int rowsAffected = ps.executeUpdate();
                if (rowsAffected > 0) {
                    out.println("Data inserted successfully.");
                } else {
                    out.println("Failed to insert data.");
                }
            } catch (SQLException e) {
                out.println("Error: " + e.getMessage());
            } finally {
                try {
                    if (ps != null) {
                        ps.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException e) {
                    out.println("Error closing connection: " + e.getMessage());
                }
            }
        %>
</body>
</html>
