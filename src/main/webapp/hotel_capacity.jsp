<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.naming.InitialContext"%>
<%@ page import="javax.naming.NamingException"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hotel Capacity</title>
</head>
<body>
<%
    String hotelId = request.getParameter("hotelId");
    try {
        InitialContext ctx = new InitialContext();
        DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/YourDataSource");
        Connection conn = ds.getConnection();

        String sql = "SELECT * FROM hotel_capacity WHERE id = ?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, hotelId);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            out.println("<h2>Hotel Capacity</h2>");
            out.println("Hotel Name: " + rs.getString("name") + "<br/>");
            out.println("Total Capacity: " + rs.getInt("sum") + "<br/>");
        } else {
            out.println("<h2>No data found for the selected hotel.</h2>");
        }
        rs.close();
        ps.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h2>Error retrieving data. Please try again.</h2>");
    }
%>
</body>
</html>


