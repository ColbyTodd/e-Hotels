<%@ page import="com.demo.HotelService" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    HotelService service = new HotelService();
    try {
        service.deleteHotel(id);
        response.sendRedirect("db_hotel.jsp?deleted=true");
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("db_hotel.jsp?error=true");
    }
%>
