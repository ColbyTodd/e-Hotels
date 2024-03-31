<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.Statement, java.sql.ResultSet" %>
<%@ page import="com.demo.ConnectionDB" %>
<%@ page import="com.demo.RentService" %>
<%@ page import="com.demo.RoomService" %>
<%@ page import="com.demo.Room" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.text.ParseException" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.demo.Rent" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    RoomService roomService = new RoomService();
    RentService rentService = new RentService();
    List<Room> roomsToApprove = roomService.getFalseStatusRooms();
%>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Bootstrap Date Picker Plugin -->
    <source src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
    <source src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js">

    <title>Employee</title>
</head>
<body>
    <!-- Option Javascript: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <div class="container-fluid">
        <div class="text-center">
            <!-- Return To Home Button -->
            <div class="row">
                <div class="col-md-12" style="margin-top: 20px;">
                    <a href="./index.jsp" class="btn btn-primary">Return Home</a>
                </div>
            </div>
        <div class="text-center">
            <div class="row justify-content-center mt-4">
                    <div class="col-md-8">
                        <h3 class="mb-4">Create a New Renting</h3>
                        <form id="createRentalForm" class="row g-3">
                            <div class="col-md-6">
                                <label for="startDate" class="form-label">Start Date:</label>
                                <input type="date" class="form-control" id="startDate" name="startDate" required>
                            </div>
                            <div class="col-md-6">
                                <label for="endDate" class="form-label">End Date:</label>
                                <input type="date" class="form-control" id="endDate" name="endDate" required>
                            </div>
                            <div class="col-12">
                                <label for="paymentMethod" class="form-label">Payment Method:</label>
                                <select id="paymentMethod" name="paymentMethod" class="form-select" required>
                                    <option value="">Select Payment Type</option>
                                    <option value="card">Card</option>
                                    <option value="cash">Cash</option>
                                </select>
                            </div>
                            <div class="col-12">
                                <button type="button" class="btn btn-primary" onclick="createRental()">Create Rental</button>
                            </div>
                        </form>
                    </div>
                </div>


            <div class="row" style="padding: 20px">
                <!-- Turn Bookings into Rentings -->
                <h3>Turn existing customer bookings into rentings</h3>
                <div class="container mt-4">
                    <h2>Bookings Pending Approval</h2>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Room ID</th>
                                <th>Hotel ID</th>
                                <th>Start Date</th>
                                <th>End Date</th>
                                <th>Payment Method</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for (Room room : roomsToApprove) {
                            %>
                            <tr>
                                <td><%= room.getId() %></td>
                                <td><%= room.getHotelId() %></td>
                                <td><%= room.getStartDate() != null ? room.getStartDate().toString() : "N/A" %></td>
                                <td><%= room.getEndDate() != null ? room.getEndDate().toString() : "N/A" %></td>
                                <td>
                                    <select id="paymentMethod<%= room.getId() %>" class="form-select">
                                        <option selected value="">No payment selected</option>
                                        <option value="card">Card</option>
                                        <option value="cash">Cash</option>
                                    </select>
                                </td>
                                <td>
                                    <button onclick="approveRental(<%= room.getId() %>)" class="btn btn-primary">Approve Rental</button>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
        <h1></h1>
    </div>
   <script>
       function approveRental(roomId) {
           var paymentMethodSelect = document.getElementById("paymentMethod" + roomId);
           var paymentMethod = paymentMethodSelect.value;

           var xhttp = new XMLHttpRequest();
           xhttp.onreadystatechange = function() {
               if (this.readyState == 4 && this.status == 200) {
                   // Check for a successful response, you might need to adjust based on what approveRental.jsp returns
                   var response = this.responseText.trim();
                   if(response.toLowerCase() === "rental approved successfully!") {
                       alert("Rental approved successfully!");
                       window.location.reload(); // Refresh the page to update the table
                   } else {
                       alert("Failed to approve rental: " + response);
                   }
               }
           };
           xhttp.open("POST", "approveRental.jsp", true);
           xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
           // Correctly format the data to be sent in the POST request
           xhttp.send(`roomId=${roomId}&paymentMethod=${paymentMethod}`);
       }
   </script>
   <script>
       function createRental() {
           var form = document.getElementById("createRentalForm");
           var startDate = form["startDate"].value;
           var endDate = form["endDate"].value;
           var paymentMethod = form["paymentMethod"].value;

           var xhttp = new XMLHttpRequest();
           xhttp.onreadystatechange = function() {
               if (this.readyState == 4 && this.status == 200) {
                   var response = this.responseText.trim();
                   alert(response); // Display the response from createRental.jsp
                   location.reload(); // Optionally refresh to show the updated list or update the UI accordingly
               }
           };
           xhttp.open("POST", "createRental.jsp", true);
           xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
           xhttp.send(`startDate=${startDate}&endDate=${endDate}&paymentMethod=${paymentMethod}`);
       }
   </script>



</body>
</html>