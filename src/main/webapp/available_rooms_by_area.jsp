<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.naming.InitialContext"%>
<%@ page import="javax.naming.NamingException"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Available Rooms by Area</title>
</head>
<body>
<%
    String city = request.getParameter("city");
    try {
        InitialContext ctx = new InitialContext();
        DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/YourDataSource");
        Connection conn = ds.getConnection();

        String sql = "SELECT * FROM available_rooms_by_area WHERE city = ?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, city);
        ResultSet rs = ps.executeQuery();

        out.println("<h2>Available Rooms in " + city + "</h2>");
        while (rs.next()) {
            out.println("City: " + rs.getString("city") + "<br/>");
            out.println("Available Rooms: " + rs.getInt("count") + "<br/><br/>");
        }
        rs.close();
        ps.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
</body>
</html>
