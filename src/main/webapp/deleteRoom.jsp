<%@ page import="com.demo.RoomService" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    RoomService service = new RoomService();
    service.deleteRoom(id);
    response.sendRedirect("db_room.jsp"); // Redirect back to room listing
%>
