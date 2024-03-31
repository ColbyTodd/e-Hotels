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
    int roomId = Integer.parseInt(request.getParameter("roomId"));
    String paymentMethod = request.getParameter("paymentMethod");
    String startDateStr = request.getParameter("startDate");
    String endDateStr = request.getParameter("endDate");
    Date startDate = Date.valueOf(startDateStr);
    Date endDate = Date.valueOf(endDateStr);

    ConnectionDB db = new ConnectionDB();

    // Initialize a variable to hold the update result message
    String resultMessage = "";

    // Check if the payment method is either 'Cash' or 'Card'
    if ("cash".equals(paymentMethod) || "card".equals(paymentMethod)) {
        // SQL to update the room status to true
        String updateRoomSql = "UPDATE room SET status = true WHERE id = ?";

        // SQL to update the payment method in the rent table
        String updateRentSql = "UPDATE rent SET payment = ? WHERE room_id = ? AND start_date = ? AND end_date = ? AND payment IS NULL";

        try (Connection con = db.getConnection()) {
            // Start transaction
            con.setAutoCommit(false);

            // Update the room status
            try (PreparedStatement updateRoomStmt = con.prepareStatement(updateRoomSql)) {
                updateRoomStmt.setInt(1, roomId);
                updateRoomStmt.executeUpdate();
            }

            // Update the payment method in the rent table
            try (PreparedStatement updateRentStmt = con.prepareStatement(updateRentSql)) {
                updateRentStmt.setString(1, paymentMethod);
                updateRentStmt.setInt(2, roomId);
                updateRentStmt.setDate(3, startDate);
                updateRentStmt.setDate(4, endDate);
                int affectedRows = updateRentStmt.executeUpdate();
                if (affectedRows == 0) {
                    // No rows affected, throw an error
                    throw new SQLException("No rent record found to update or the rent is already paid.");
                }
            }

            // Commit transaction
            con.commit();
            resultMessage = "Rental approved successfully!";

        } catch (Exception e) {
            // Rollback the transaction in case of an error
            if (con != null) {
                try {
                    con.rollback();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                    resultMessage = "Error while rolling back transaction: " + ex.getMessage();
                }
            }
            // Log the exception
            e.printStackTrace();
            resultMessage = "Error while approving rental: " + e.getMessage();
        } finally {
            db.close();
        }
    } else {
        // Payment method was 'No Payment'
        resultMessage = "Cannot approve rental without a valid payment method.";
    }

    // Print the result message
    out.print(resultMessage);
%>
