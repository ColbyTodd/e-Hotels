<%@ page import="com.demo.RoomService" %>
<%@ page import="com.demo.Room" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.ParseException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.SQLException" %>

<%
Integer roomId = null;
String roomIdParam = request.getParameter("roomId");
if (roomIdParam != null) {
    try {
        roomId = Integer.parseInt(roomIdParam);
    } catch (NumberFormatException e) {
        response.getWriter().write("Invalid room ID");
        return;
    }

    RoomService service = new RoomService();
    try {
        service.updateRoomStatus(roomId);
        response.getWriter().write("Success");
    } catch (SQLException e) {
        // Log error
        response.getWriter().write("Error updating room status: " + e.getMessage());
    }
} else {
    response.getWriter().write("Room ID not provided");
}
%>

