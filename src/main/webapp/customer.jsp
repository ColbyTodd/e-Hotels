<%--
  Created by IntelliJ IDEA.
  User: vivet
  Date: 2024-03-25
  Time: 2:44 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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

    <title>Customer</title>
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
                <h2>I Am A Customer</h2>
                <div class="column" style="padding-top: 20px">
                    <a class="btn btn-primary btn-lg" href="./index.jsp" role="button"><h4>Home Page</h4></a>
                </div>
            </div>
            <div class="row" style="padding-top: 20px">
                <h3>Enter whatever criteria you want to find the perfect room for you!</h3>
            </div>
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
                            <div class="input-group" style="padding-top: 5px">
                                <input type="text" class="form-control" placeholder="Enter a room capacity" aria-label="Capacity">
                            </div>
                        </td>
                        <td>
                            <div class="calender-box">
                                <div class="form-floating" style="padding-top: 5px">
                                    <!-- Location options should depend on the database -->
                                    <select class="form-select" id="floatingSelect1" aria-label="Location">
                                        <option selected>No preference</option>
                                        <option value="0">Ottawa</option>
                                        <option value="1">Toronto</option>
                                        <option value="2">Montreal</option>
                                        <option value="3">Vancouver</option>
                                    </select>
                                    <label for="floatingSelect1">Location</label>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="calender-box">
                                <div class="form-floating" style="padding-top: 5px">
                                    <!-- Max price for a room -->
                                    <select class="form-select" id="floatingSelect5" aria-label="Price">
                                        <option selected>No preference</option>
                                        <option value="0">< $100</option>
                                        <option value="1">< $200</option>
                                        <option value="2">< $500</option>
                                        <option value="3">< $1000</option>
                                        <option value="4">< $2000</option>
                                    </select>
                                    <label for="floatingSelect5">Max Price</label>
                                </div>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                    <thread>
                        <tr>
                            <th>Hotel Chain</th>
                            <th>Hotel Category</th>
                            <th>Total Number of Rooms in Hotel</th>
                            <th>Find A Room</th>
                        </tr>
                    </thread>
                    <tbody>
                        <td>
                            <div class="calender-box">
                                <div class="form-floating" style="padding-top: 5px">
                                    <!-- Hotel Chain options should depend on the database -->
                                    <select class="form-select" id="floatingSelect2" aria-label="Chain">
                                        <option selected>No preference</option>
                                        <option value="0">Chain 1</option>
                                        <option value="1">Chain 2</option>
                                        <option value="2">Chain 3</option>
                                        <option value="3">Chain 4</option>
                                    </select>
                                    <label for="floatingSelect2">Hotel Chain</label>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="calender-box">
                                <div class="form-floating" style="padding-top: 5px">
                                    <!-- Hotel Category options -->
                                    <select class="form-select" id="floatingSelect3" aria-label="Category">
                                        <option selected>No preference</option>
                                        <option value="0">1 Star</option>
                                        <option value="1">2 Star</option>
                                        <option value="2">3 Star</option>
                                        <option value="3">4 Star</option>
                                        <option value="4">5 Star</option>
                                    </select>
                                    <label for="floatingSelect3">Star Rating</label>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="calender-box">
                                <div class="form-floating" style="padding-top: 5px">
                                    <!-- Min/Max number of rooms in a specific hotel -->
                                    <select class="form-select" id="floatingSelect4" aria-label="Size">
                                        <option selected>No preference</option>
                                        <option value="0">< 25</option>
                                        <option value="1">26 - 99</option>
                                        <option value="2">100 - 149</option>
                                        <option value="3">150 - 299</option>
                                        <option value="4">> 300</option>
                                    </select>
                                    <label for="floatingSelect4">Hotel Room Count</label>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="column" style="padding: 5px 10px 20px 5px">
                                <a class="btn btn-primary btn-lg" role="button"><h4>Search For Rooms</h4></a>
                            </div>
                        </td>
                        <form method="POST" action="delete-grade-controller.jsp">
                            <td>
                                <input type="hidden" value="4" name="id" />
                            </td>
                        </form>
                    </tbody>
                </table>
            </div>
        </div>
        <h1></h1>
    </div>
</body>
</html>
