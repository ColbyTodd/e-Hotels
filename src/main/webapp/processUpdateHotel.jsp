<%@ page import="com.demo.Hotel, com.demo.HotelService" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("name");
    int hotelChainId = Integer.parseInt(request.getParameter("hotelChainId"));
    int category = Integer.parseInt(request.getParameter("category"));
    int numberOfRooms = Integer.parseInt(request.getParameter("numberOfRooms"));
    String address = request.getParameter("address");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String city = request.getParameter("city");

    Hotel hotel = new Hotel(id, name, hotelChainId, category, numberOfRooms, address, email, phone, city);
    HotelService service = new HotelService();
    try {
        service.updateHotel(hotel);
        response.sendRedirect("db_hotel.jsp?updated=true");
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("db_hotel.jsp?error=true");
    }
%>
