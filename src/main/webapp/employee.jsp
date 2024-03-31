<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.demo.RentService" %>
<%@ page import="com.demo.RoomService" %>
<%@ page import="com.demo.Room" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.ParseException" %>
<%@ page import="java.util.Calendar" %>

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
        <!-- Title + Return To Home Button -->
        <div class="text-center">
            <div class="row">
                <h2 style="padding-top: 100px; padding-bottom: 20px">E-Hotel Booking Application</h2>
            </div>
            <div class="row">
                <h2>I Am An Employee</h2>
                <div class="column" style="padding-top: 20px">
                    <a class="btn btn-primary btn-lg" href="./index.jsp" role="button"><h4>Home Page</h4></a>
                </div>
            </div>
            <div class="row" style="padding: 20px">
                <!-- Create a renting on the spot -->
                <h3>Create a new renting</h3>
                <div class="col">
                    <table style="text-align: center; table-layout: fixed; width: 100%">
                        <thread>
                            <tr>
                                <th>Start - End Date <span style="color: #ff0000">(Mandatory)</span></th>
                                <th>Payment Method</th> <!-- if mandatory add red tag -->
                                <th>Create Renting</th>
                            </tr>
                        </thread>
                        <tbody>
                        <tr>
                            <td>
                                <div class="calender-box" style="padding-left: 5px; padding-right: 25px">
                                    <form>
                                        <!-- Start & End Date -->
                                        <div class="row">
                                            <label for="date1">Start:</label>
                                            <input type="date" id="date1" name="date" required>
                                        </div>
                                        <div class="row" style="padding-top: 5px">
                                            <label for="date2">End:</label>
                                            <input type="date" id="date2" name="date" required>
                                        </div>
                                    </form>
                                </div>
                            </td>
                            <td>
                                <div class="calender-box">
                                    <div class="form-floating" style="padding-top: 5px">
                                        <!-- Location options should depend on the database -->
                                        <select class="form-select" id="floatingSelect3" aria-label="Payment">
                                            <option selected>Select Payment Type</option>
                                            <option value="0">Card</option>
                                            <option value="1">Cash</option>
                                        </select>
                                        <label for="floatingSelect3">Payment Type</label>
                                    </div>
                                </div>
                            </td>
                            <form method="POST" action="delete-grade-controller.jsp">
                                <td>
                                    <input type="hidden" value="insert java formula here" name="id" />
                                    <a class="btn btn-primary btn-lg" role="button" type="submit">Create Rental</a>
                                </td>
                            </form>
                        </tr>
                        </tbody>
                    </table>
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


</body>
</html>
