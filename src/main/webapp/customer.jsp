<%@ page import="com.demo.RoomService" %>
<%@ page import="com.demo.Room" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Bootstrap Date Picker Plugin -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

    <title>Customer</title>
</head>
<body>
    <!-- Option Javascript: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <div class="container-fluid">
        <div class="text-center">
            <div class="row">
                <h2 style="padding-top: 100px; padding-bottom: 20px">E-Hotel Booking Application</h2>
            </div>
            <div class="row">
                <h2>I Am A Customer</h2>
                <div class="column" style="padding-top: 20px">
                    <a class="btn btn-primary btn-lg" href="./index.jsp" role="button"><h4>Home Page</h4></a>
                </div>
            </div>
            <div class="row" style="padding-top: 20px">
                <h3>Enter whatever criteria you want to find the perfect room for you!</h3>
            </div>
            <!-- Start of Form -->
            <form action="update-customer.jsp" method="POST">
                <div class="row" style="padding: 20px">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Start - End Date</th>
                                <th>Room Capacity</th>
                                <th>Location</th>
                                <th>Price Range</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <div class="calender-box" style="padding-left: 5px; padding-right: 10px">
                                        <!-- Start & End Date -->
                                        <div class="row">
                                            <label for="startDate">Start:</label>
                                            <input type="date" id="startDate" name="startDate">
                                        </div>
                                        <div class="row" style="padding-top: 5px">
                                            <label for="endDate">End:</label>
                                            <input type="date" id="endDate" name="endDate">
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="input-group" style="padding-top: 5px">
                                        <input type="number" class="form-control" id="capacityInput" name="capacity" placeholder="Enter a room capacity" aria-label="Capacity">
                                    </div>
                                </td>
                                <td>
                                    <div class="calender-box">
                                        <div class="form-floating" style="padding-top: 5px">
                                            <select class="form-select" id="location" name="location" aria-label="Location">
                                                <option selected value="">No preference</option>
                                                <option value="Ottawa">Ottawa</option>
                                                <option value="Toronto">Toronto</option>
                                                <option value="Montreal">Montreal</option>
                                                <option value="Vancouver">Vancouver</option>
                                            </select>
                                            <label for="location">Location</label>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="calender-box">
                                        <div class="form-floating" style="padding-top: 5px">
                                            <select class="form-select" id="maxPrice" name="maxPrice" aria-label="Price">
                                                <option selected value="">No preference</option>
                                                <option value="100">< $100</option>
                                                <option value="200">< $200</option>
                                                <option value="500">< $500</option>
                                                <option value="1000">< $1000</option>
                                                <option value="2000">< $2000</option>
                                            </select>
                                            <label for="maxPrice">Max Price</label>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                        <thead>
                            <tr>
                                <th>Hotel Chain</th>
                                <th>Hotel Category</th>
                                <th>Total Number of Rooms in Hotel</th>
                                <th>Find A Room</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <div class="calender-box">
                                        <div class="form-floating" style="padding-top: 5px">
                                            <select class="form-select" id="hotelChain" name="hotelChain" aria-label="Chain">
                                                <option selected value="">No preference</option>
                                                  <option value="1">Chain Bogisich LLC</option>
                                                  <option value="2">Chain Kunde LLC</option>
                                                  <option value="3">Chain Stamm, Bins and Hirthe</option>
                                                  <option value="4">Chain Vandervort, Leannon and Koelpin</option>
                                                  <option value="5">Chain Price, Schulist and Gusikowski</option>

                                            </select>
                                            <label for="hotelChain">Hotel Chain</label>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="calender-box">
                                        <div class="form-floating" style="padding-top: 5px">
                                            <select class="form-select" id="category" name="category" aria-label="Category">
                                                <option selected value="">No preference</option>
                                                <!-- Add your options here similar to above -->
                                            </select>
                                            <label for="category">Hotel Category</label>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="calender-box">
                                        <div class="form-floating" style="padding-top: 5px">
                                            <select class="form-select" id="size" name="size" aria-label="Size">
                                                <option selected value="">No preference</option>
                                                <!-- Add your options here similar to above -->
                                            </select>
                                            <label for="size">Hotel Room Count</label>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="column" style="padding: 5px 10px 20px 5px">
                                        <button type="submit" class="btn btn-primary btn-lg"><h4>Search For Rooms</h4></button>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </form>
            <!-- Insert this after the form in customer.jsp -->
            <div class="container mt-4">
                <h2>Search Results</h2>
                <table class="table">
                    <thead>
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
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        List<Room> rooms = (List<Room>) session.getAttribute("roomsResults");
                        List<Room> roomsDebug = (List<Room>) session.getAttribute("roomsResults");
                            if (roomsDebug != null) {
                                out.println("<h3>Debug: Session 'roomsResults' contains " + roomsDebug.size() + " rooms.</h3>");
                            } else {
                                out.println("<h3>Debug: Session 'roomsResults' is null or not set.</h3>");
                            }
                        if (rooms != null && !rooms.isEmpty()) {
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
                                    <td><%= room.getExtendable() ? "Yes" : "No" %></td>
                                    <td><%= room.getProblems() ? "Yes" : "No" %></td>
                                    <td><%= room.getStatus() ? "Available" : "Not Available" %></td>
                                </tr>
                                <%
                            }
                            // Clear the attribute after use to prevent stale data on refresh
                            session.removeAttribute("roomsResults");
                        } else {
                            %>
                            <tr>
                                <td colspan="10">No results found.</td>
                            </tr>
                            <%
                        }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</body>
</html>
