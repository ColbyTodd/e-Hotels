<%@ page import="com.demo.HotelService, com.demo.Hotel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Hotel Management</title>
</head>
<body>
<h2>Add New Hotel</h2>
<form action="createHotel.jsp" method="post">
    Name: <input type="text" name="name" required /><br />
    Hotel Chain ID: <input type="number" name="hotelChainId" required /><br />
    Category (stars): <input type="number" name="category" required /><br />
    Number of Rooms: <input type="number" name="numberOfRooms" required /><br />
    Address: <input type="text" name="address" required /><br />
    Email: <input type="email" name="email" required /><br />
    Phone: <input type="text" name="phone" required /><br />
    City: <input type="text" name="city" required /><br />
    <input type="submit" value="Add Hotel" />
</form>
<h2>Hotel List</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Hotel Chain ID</th>
        <th>Category</th>
        <th>Number of Rooms</th>
        <th>Address</th>
        <th>Email</th>
        <th>Phone</th>
        <th>City</th>
        <th>Delete</th>
        <th>Update</th>
    </tr>
    <%
        HotelService service = new HotelService();
        List<Hotel> hotels = service.getHotels();
        for (Hotel hotel : hotels) {
    %>
    <tr>
        <td><%= hotel.getId() %></td>
        <td><%= hotel.getName() %></td>
        <td><%= hotel.getHotelChainId() %></td>
        <td><%= hotel.getCategory() %></td>
        <td><%= hotel.getNumberOfRooms() %></td>
        <td><%= hotel.getAddress() %></td>
        <td><%= hotel.getEmail() %></td>
        <td><%= hotel.getPhone() %></td>
        <td><%= hotel.getCity() %></td>
        <td>
            <form action="deleteHotel.jsp" method="post">
                <input type="hidden" name="id" value="<%= hotel.getId() %>" />
                <input type="submit" value="Delete" />
            </form>
        </td>
        <td>
            <a href="updateHotel.jsp?id=<%= hotel.getId() %>">Update</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>