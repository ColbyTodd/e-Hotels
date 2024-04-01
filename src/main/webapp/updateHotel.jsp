<%@ page import="com.demo.Hotel, com.demo.HotelService" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    HotelService service = new HotelService();
    Hotel hotel = service.getHotelById(id); // Ensure you implement this method in HotelService
%>
<html>
<head>
    <title>Update Hotel</title>
</head>
<body>
<h2>Update Hotel</h2>
<form action="processUpdateHotel.jsp" method="post">
    <input type="hidden" name="id" value="<%= id %>" />
    Name: <input type="text" name="name" value="<%= hotel.getName() %>" /><br />
    Hotel Chain ID: <input type="number" name="hotelChainId" value="<%= hotel.getHotelChainId() %>" /><br />
    Category (stars): <input type="number" name="category" value="<%= hotel.getCategory() %>" /><br />
    Number of Rooms: <input type="number" name="numberOfRooms" value="<%= hotel.getNumberOfRooms() %>" /><br />
    Address: <input type="text" name="address" value="<%= hotel.getAddress() %>" /><br />
    Email: <input type="email" name="email" value="<%= hotel.getEmail() %>" /><br />
    Phone: <input type="text" name="phone" value="<%= hotel.getPhone() %>" /><br />
    City: <input type="text" name="city" value="<%= hotel.getCity() %>" /><br />
    <input type="submit" value="Update Hotel" />
</form>
</body>
</html>
