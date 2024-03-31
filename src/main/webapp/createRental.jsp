<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.Statement" %>
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
<%@ page import="java.sql.ResultSet" %>


<%
    String startDateStr = request.getParameter("startDate");
    String endDateStr = request.getParameter("endDate");
    String paymentMethod = request.getParameter("paymentMethod");
    int hotelId = Integer.parseInt(request.getParameter("hotelId"));
    int hotelChainId = Integer.parseInt(request.getParameter("hotelChainId"));

    // Conversion to SQL Date
    Date startDate = Date.valueOf(startDateStr);
    Date endDate = Date.valueOf(endDateStr);

    ConnectionDB db = new ConnectionDB(); // Your DB connection class
    Connection con = db.getConnection();

    try {
        // Step 1: Select an available roomId with status = false
        String roomIdQuery = "SELECT id FROM room WHERE status = false LIMIT 1";
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(roomIdQuery);
        int roomId = 0;
        if (rs.next()) {
            roomId = rs.getInt("id");
        }

        // Step 2: Create a new rent row with the captured data
        if(roomId > 0){
            String insertQuery = "INSERT INTO rent (room_id, hotel_id, hotel_chain_id, start_date, end_date, payment) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = con.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            pstmt.setInt(1, roomId);
            pstmt.setDate(2, hotelId);
            pstmt.setDate(3, hotelChainId);
            pstmt.setDate(4, startDate);
            pstmt.setDate(5, endDate);
            pstmt.setString(6, paymentMethod);
            pstmt.executeUpdate();

            // Update room status to true to indicate it's now rented
            String updateRoomStatus = "UPDATE room SET status = true WHERE id = ?";
            PreparedStatement pstmtUpdate = con.prepareStatement(updateRoomStatus);
            pstmtUpdate.setInt(1, roomId);
            pstmtUpdate.executeUpdate();
        }

        // Step 3: Optionally, display the newly created rent row (or redirect to a confirmation page)
        out.println("Rental Created Successfully for Room ID: " + roomId);
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        if(con != null) try { con.close(); } catch(Exception e) {}
    }
%>