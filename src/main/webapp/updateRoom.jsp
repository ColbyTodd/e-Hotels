<%@ page import="com.demo.Room, com.demo.RoomService" %>
<%
    RoomService service = new RoomService();
    int roomId = Integer.parseInt(request.getParameter("id"));
    Room room = service.getRoomById(roomId);
%>
<html>
<head>
    <title>Update Room</title>
</head>
<body>
    <h2>Update Room</h2>
    <form action="processUpdateRoom.jsp" method="post">
        <input type="hidden" name="id" value="<%= roomId %>" />
        Hotel ID: <input type="text" name="hotelId" value="<%= room.getHotelId() %>" /><br />
        Hotel Chain ID: <input type="text" name="hotelChainId" value="<%= room.getHotelChainId() %>" /><br />
        Price: <input type="text" name="price" value="<%= room.getPrice() %>" /><br />
        Amenities: <input type="text" name="amenities" value="<%= room.getAmenities() %>" /><br />
        Capacity: <input type="text" name="capacity" value="<%= room.getCapacity() %>" /><br />
        Room View: <input type="text" name="roomView" value="<%= room.getRoomView() %>" /><br />
        Extendable: <input type="checkbox" name="extendable" <%= room.getExtendable() ? "checked" : "" %> /><br />
        Problems: <input type="checkbox" name="problems" <%= room.getProblems() ? "checked" : "" %> /><br />
        Status: <input type="checkbox" name="status" <%= room.getStatus() ? "checked" : "" %> /><br />
        <input type="submit" value="Update Room" />
    </form>
</body>
</html>
