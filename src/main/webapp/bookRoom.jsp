<%@ page import="com.demo.RoomService" %>
<%@ page import="com.demo.Room" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.text.ParseException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.demo.RentService, com.demo.Rent" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    int roomId = Integer.parseInt(request.getParameter("roomId"));
    // This needs to be dynamically determined or passed correctly
    int hotelId = Integer.parseInt(request.getParameter("hotelId"));
    int hotelChainId = Integer.parseInt(request.getParameter("hotelChainId"));
    int customerId = 1;
    Date startDate = Date.valueOf(request.getParameter("startDate"));
    Date endDate = Date.valueOf(request.getParameter("endDate"));
    String payment = null; // Assuming you will handle payment details later

    Rent newRent = new Rent(null, customerId, roomId, hotelId, hotelChainId, startDate, endDate, payment);

    RentService rentService = new RentService();
    String resultMessage;
    try {
        resultMessage = rentService.createRent(newRent);
    } catch (Exception e) {
        resultMessage = "Failed to create rent: " + e.getMessage();
    }

    response.getWriter().write(resultMessage);
%>
