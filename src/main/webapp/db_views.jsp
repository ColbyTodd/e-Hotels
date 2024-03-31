<%@ page import="java.sql.*, java.util.ArrayList" %>
<%@ page import="com.demo.ConnectionDB" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Database Views</title>
    <!-- Include Bootstrap for styling -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .container {
                margin-top: 20px;
            }
            .form-group {
                margin-bottom: 15px;
            }
            h2 {
                margin-bottom: 20px;
            }
        </style>
</head>
<body>
<body>
<div class="container">
    <!-- Return to Home Button -->
    <div class="text-right mb-3">
        <a href="./index.jsp" class="btn btn-primary">Return Home</a>
    </div>
     <h2>Available Rooms by Area</h2>
        <form action="db_views.jsp" method="post" class="mb-5">
            <div class="form-group">
                Select City:
                <select name="city" class="form-control">
                    <option value="">Select a city</option>
                    <!-- Dynamically populate cities -->
                    <%
                        ConnectionDB db = new ConnectionDB();
                        try (Connection con = db.getConnection();
                             PreparedStatement ps = con.prepareStatement("SELECT DISTINCT city FROM hotel ORDER BY city");
                             ResultSet rs = ps.executeQuery()) {
                            while (rs.next()) {
                                String city = rs.getString("city");
                                out.println("<option value='" + city + "'>" + city + "</option>");
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </select>
            </div>
            <input type="submit" value="Show Available Rooms" class="btn btn-info">
        </form>

        <h2>Hotel Capacity</h2>
        <form action="db_views.jsp" method="post">
            <div class="form-group">
                Select Hotel:
                <select name="hotelId" class="form-control">
                    <option value="">Select a hotel</option>
                    <!-- Dynamically populate hotels -->
                    <%
                        try (Connection con = db.getConnection();
                             PreparedStatement ps = con.prepareStatement("SELECT id, name FROM hotel ORDER BY name");
                             ResultSet rs = ps.executeQuery()) {
                            while (rs.next()) {
                                int id = rs.getInt("id");
                                String name = rs.getString("name");
                                out.println("<option value='" + id + "'>" + name + "</option>");
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </select>
            </div>
            <input type="submit" value="Show Capacity" class="btn btn-info">
        </form>


    <!-- Display Views -->
    <%
        String selectedCity = request.getParameter("city");
        if (selectedCity != null && !selectedCity.isEmpty()) {
            // Display available rooms by selected city
            try (Connection con = db.getConnection();
                 PreparedStatement ps = con.prepareStatement("SELECT * FROM available_rooms_by_area WHERE city = ?");
                 ) {
                ps.setString(1, selectedCity);
                try (ResultSet rs = ps.executeQuery()) {
                    while (rs.next()) {
                        String city = rs.getString("city");
                        int count = rs.getInt("count");
                        out.println("<p>" + city + ": " + count + " available rooms</p>");
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        String selectedHotelId = request.getParameter("hotelId");
        if (selectedHotelId != null && !selectedHotelId.isEmpty()) {
            // Display capacity of the selected hotel
            try (Connection con = db.getConnection();
                 PreparedStatement ps = con.prepareStatement("SELECT * FROM hotel_capacity WHERE id = ?");
                 ) {
                ps.setInt(1, Integer.parseInt(selectedHotelId));
                try (ResultSet rs = ps.executeQuery()) {
                    if (rs.next()) {
                        String name = rs.getString("name");
                        int sum = rs.getInt("sum");
                        out.println("<p>Hotel " + name + " Capacity: " + sum + "</p>");
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    %>
</div>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>
