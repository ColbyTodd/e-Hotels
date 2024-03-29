<%--
  Created by IntelliJ IDEA.
  User: vivet
  Date: 2024-03-29
  Time: 1:20 p.m.
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
            <h2>Two Database Views</h2>
            <div class="column" style="padding-top: 20px">
                <a class="btn btn-primary btn-lg" href="./index.jsp" role="button"><h4>Home Page</h4></a>
            </div>
        </div>
        <div class="row" style="padding: 20px">
            <!-- View 1 -->
            <h3> View 1: Number of available rooms per area</h3>
            <div class="col-2"></div>
            <div class="col">
                <table style="text-align: center; table-layout: fixed; width: 100%">
                    <thread>
                        <tr>
                            <th>City/Area</th> <!-- -->
                            <th>Number of Available Rooms</th>
                        </tr>
                    </thread>
                    <tbody>
                    <!-- Make the following tr recursive to go over every row -->
                    <tr>
                        <td>
                            <!-- Insert db query to pull info on 'city' which = string -->
                            city
                        </td>
                        <td>
                            <!-- Insert db query to pull info on 'count' which = int -->
                            count
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-2"></div>
        </div>
        <div class="row" style="padding: 20px">
            <!-- View 2 -->
            <h3>View 2: Aggregated Capacity of Rooms in a Specific Hotel</h3>
            <div class="col">
                <table style="text-align: center; table-layout: fixed; width: 100%">
                    <thread>
                        <tr>
                            <th>ID</th>
                            <th>Hotel</th>
                            <th>Collective Room Capacity</th>
                        </tr>
                    </thread>
                    <tbody>
                    <!-- Make the following tr recursive to go over every row -->
                    <tr>
                        <td>
                            <!-- Insert db query to pull info on 'id' which = integer -->
                            id
                        </td>
                        <td>
                            <!-- Insert db query to pull info on 'name' which = string -->
                            name
                        </td>
                        <td>
                            <!-- Insert db query to pull info on 'sum' which = int -->
                            sum
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <h1></h1>
</div>
</body>
</html>
