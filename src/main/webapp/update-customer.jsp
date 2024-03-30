<%@ page import="com.demo.RoomService" %>
<%@ page import="com.demo.Room" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Filtered Rooms</title>
</head>
<body>
    <%
        // Date format assumed from input type="date" (YYYY-MM-DD)
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        // Initialize startDate and endDate


        int capacity = 0; // Default value if not specified
        String capacityStr = request.getParameter("capacity");
        if (capacityStr != null && !capacityStr.isEmpty()) {
            try {
                capacity = Integer.parseInt(capacityStr);
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }

        int maxPrice = 0; // Default value if not specified
        String maxPriceStr = request.getParameter("maxPrice");
        if (maxPriceStr != null && !maxPriceStr.isEmpty()) {
            try {
                maxPrice = Integer.parseInt(maxPriceStr);
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        int hotelChain = 0; // Default value if not specified
        String hotelChainStr = request.getParameter("hotelChain");
        if (hotelChainStr != null && !hotelChainStr.isEmpty()) {
            try {
                hotelChain = Integer.parseInt(hotelChainStr);
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }


        String location = request.getParameter("location");
        System.out.println(capacity);
        System.out.println(maxPrice);
        System.out.println(hotelChain);


        RoomService roomService = new RoomService();
        List<Room> rooms = new ArrayList<>(); // Initialize to avoid null
        try {
            rooms = roomService.getSpecifiedRooms(capacity, maxPrice, hotelChain);
            System.out.println(rooms);
        } catch (Exception e) {
            e.printStackTrace();
        }

        System.out.println(rooms);
        session.setAttribute("roomsResults", rooms);
        response.sendRedirect("customer.jsp");
    %>
</body>
</html>
