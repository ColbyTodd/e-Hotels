<%@ page import="com.demo.RoomService" %>
<%@ page import="com.demo.Room" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.ParseException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Filtered Rooms</title>
</head>
<body>
    <%

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date startDate = null;
        String startDateStr = request.getParameter("startDate");
        if (startDateStr != null && !startDateStr.isEmpty()){
        try {
            startDate = sdf.parse(startDateStr);
        } catch (ParseException e) {
            e.printStackTrace();
        }}

        Date endDate = null;
        String endDateStr = request.getParameter("endDate");
        if (endDateStr != null && !endDateStr.isEmpty()){
        try {
            endDate = sdf.parse(endDateStr);
        } catch (ParseException e) {
            e.printStackTrace();
        }}

        int size = 0; // Default value if not specified
        String sizeStr = request.getParameter("size");
        if (sizeStr != null && !sizeStr.isEmpty()) {
            try {
                size = Integer.parseInt(sizeStr);
            } catch (NumberFormatException e) {
                e.printStackTrace(); // Log the exception
            }
        }

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

        String location = null;
        try {
            location = request.getParameter("location");
        } catch (Exception e) {
            e.printStackTrace(); // Handle the exception specific to 'location'
        }

        int category = 0; // Default value if not specified
        String categoryStr = request.getParameter("category");
        if (categoryStr != null && !categoryStr.isEmpty()) {
            try {
                category = Integer.parseInt(categoryStr);
            } catch (NumberFormatException e) {
                e.printStackTrace(); // Log the exception for 'category'
            }
        }

        System.out.println(capacity);
        System.out.println(maxPrice);
        System.out.println(hotelChain);
        System.out.println(startDate);
        System.out.println(endDate);
        System.out.println(location);
        System.out.println(category);
        System.out.println(size);


        RoomService roomService = new RoomService();
        List<Room> rooms = new ArrayList<>(); // Initialize to avoid null
        try {
            rooms = roomService.getSpecifiedRooms(capacity, maxPrice, hotelChain, size, startDate, endDate, category, location);
            System.out.println(rooms);
        } catch (Exception e) {
            e.printStackTrace();
        }

        System.out.println(rooms);
        session.setAttribute("roomsResults", rooms);
        session.setAttribute("searchStartDate", request.getParameter("startDate"));
        session.setAttribute("searchEndDate", request.getParameter("endDate"));
        response.sendRedirect("customer.jsp");
    %>
</body>
</html>
