<%@ page import="java.sql.Connection, java.sql.PreparedStatement" %>
<%@ page import="com.demo.ConnectionDB" %>
<%@ page import="com.demo.RentService" %>
<%@ page import="com.demo.RoomService" %>
<%@ page import="com.demo.Room" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.text.ParseException" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.demo.Rent" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // Initialize variables to hold parameters
    System.out.println("fjf");
    int roomId = Integer.parseInt(request.getParameter("roomId"));
    String paymentMethod = request.getParameter("paymentMethod");

    ConnectionDB db = new ConnectionDB();

    // SQL to update the room status to true
    String updateRoomSql = "UPDATE room SET status = true WHERE id = ?";

    // SQL to update the payment method in the rent table
    String updateRentSql = "UPDATE rent SET payment = ? WHERE room_id = ? AND payment IS NULL"; // Assuming only unpaid rents are updated

    try (Connection con = db.getConnection()) {
        // Update the room status
        try (PreparedStatement updateRoomStmt = con.prepareStatement(updateRoomSql)) {
            updateRoomStmt.setInt(1, roomId);
            updateRoomStmt.executeUpdate();
        }

        // Update the payment method in the rent table
        try (PreparedStatement updateRentStmt = con.prepareStatement(updateRentSql)) {
            updateRentStmt.setString(1, paymentMethod);
            updateRentStmt.setInt(2, roomId);
            updateRentStmt.executeUpdate();
        }

        // If both operations are successful, send back a success message
        out.print("Rental approved successfully!");

    } catch (Exception e) {
        // On error, send back a detailed error message
        e.printStackTrace();
        out.print("Error while approving rental: " + e.getMessage());
    } finally {
        db.close();
    }
%>
