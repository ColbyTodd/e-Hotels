<%@ page import="com.demo.Room, com.demo.RoomService" %>
<%
    try {
        int id = Integer.parseInt(request.getParameter("id"));
        int hotelId = Integer.parseInt(request.getParameter("hotelId"));
        int hotelChainId = Integer.parseInt(request.getParameter("hotelChainId"));
        int price = Integer.parseInt(request.getParameter("price"));
        String amenities = request.getParameter("amenities").trim();
        int capacity = Integer.parseInt(request.getParameter("capacity"));
        String roomView = request.getParameter("roomView").trim();
        boolean extendable = "on".equals(request.getParameter("extendable"));
        boolean problems = "on".equals(request.getParameter("problems"));
        boolean status = "on".equals(request.getParameter("status"));

        Room room = new Room(id, hotelId, hotelChainId, price, amenities, capacity, roomView, extendable, problems, status);
        RoomService roomService = new RoomService();
        String updateMessage = roomService.updateRoom(room);
        response.sendRedirect("db_room.jsp?message=" + java.net.URLEncoder.encode(updateMessage, "UTF-8"));
    } catch (Exception e) {
        response.sendRedirect("db_room.jsp?message=" + java.net.URLEncoder.encode("Error updating room: " + e.getMessage(), "UTF-8"));
    }
%>
