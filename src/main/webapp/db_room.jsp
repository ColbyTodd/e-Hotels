<%@ page import="com.demo.RoomService, com.demo.Room" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Manage Rooms</title>
</head>
<body>
<div style="margin-top: 20px;">
    <a href="index.jsp" class="btn btn-primary">Return Home</a>
</div>

<h2>Add New Room</h2>
<!-- Form for adding a new room -->
<form action="createRoom.jsp" method="post">
    Hotel ID: <input type="number" name="hotelId" required /><br />
    Hotel Chain ID: <input type="number" name="hotelChainId" required /><br />
    Price: <input type="number" name="price" required /><br />
    Amenities: <input type="text" name="amenities" /><br />
    Capacity: <input type="number" name="capacity" required /><br />
    Room View: <input type="text" name="roomView" /><br />
    Extendable: <input type="checkbox" name="extendable" /><br />
    Problems: <input type="checkbox" name="problems" /><br />
    Status: <input type="checkbox" name="status" /><br />
    <input type="submit" value="Add Room" />
</form>

<h2>Rooms List</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Hotel ID</th>
        <th>Hotel Chain ID</th>
        <th>Price</th>
        <th>Amenities</th>
        <th>Capacity</th>
        <th>Room View</th>
        <th>Extendable</th>
        <th>Problems</th>
        <th>Status</th>
        <th>Delete</th>
        <th>Update</th>
    </tr>
    <%
        RoomService service = new RoomService();
        List<Room> rooms = service.getRooms(); // Implement getRooms in RoomService
        for (Room room : rooms) {
    %>
        <tr>
            <td><%= room.getId() %></td>
            <td><%= room.getHotelId() %></td>
            <td><%= room.getHotelChainId() %></td>
            <td><%= room.getPrice() %></td>
            <td><%= room.getAmenities() %></td>
            <td><%= room.getCapacity() %></td>
            <td><%= room.getRoomView() %></td>
            <td><%= room.getExtendable() %></td>
            <td><%= room.getProblems() %></td>
            <td><%= room.getStatus() %></td>
            <td>
                <form action="deleteRoom.jsp" method="post">
                    <input type="hidden" name="id" value="<%= room.getId() %>" />
                    <input type="submit" value="Delete" />
                </form>
            </td>
            <td>
                <a href="updateRoom.jsp?id=<%= room.getId() %>">Update</a>
            </td>
        </tr>
    <%
        }
    %>
</table>

</body>
</html>
