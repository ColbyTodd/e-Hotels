<%@ page import="com.demo.Room, com.demo.RoomService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int hotelId = Integer.parseInt(request.getParameter("hotelId"));
    int hotelChainId = Integer.parseInt(request.getParameter("hotelChainId"));
    int price = Integer.parseInt(request.getParameter("price"));
    String amenities = request.getParameter("amenities");
    int capacity = Integer.parseInt(request.getParameter("capacity"));
    String roomView = request.getParameter("roomView");
    boolean extendable = "on".equals(request.getParameter("extendable"));
    boolean problems = "on".equals(request.getParameter("problems"));
    boolean status = "on".equals(request.getParameter("status"));

    Room room = new Room(null, hotelId, hotelChainId, price, amenities, capacity, roomView, extendable, problems, status);
    RoomService roomService = new RoomService();
    String message;

    try {
        message = roomService.createRoom(room);
        response.sendRedirect("db_room.jsp?message=" + java.net.URLEncoder.encode(message, "UTF-8"));
    } catch (Exception e) {
        message = "Error while creating room: " + e.getMessage();
        response.sendRedirect("db_room.jsp?message=" + java.net.URLEncoder.encode(message, "UTF-8"));
    }
%>
