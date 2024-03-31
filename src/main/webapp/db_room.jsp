<%--
  Created by IntelliJ IDEA.
  User: vivet
  Date: 2024-03-29
  Time: 3:37 p.m.
  To change this template use File | Settings | File Templates.
--%>
<<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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

    <title>Modify Database</title>
</head>
<style>
    span {
        text-align: center;
    }
    table,
    form {
        width: 500px;
        margin: 20px auto;
    }
    table {
        border-collapse: collapse;
    }
    table td,
    table th {
        border: solid 1px black;
    }
    label,
    input {
        display: block;
        margin: 10px 0;
        background-color: peachpuff;
    }
    button {
        display: block;
        text-align: center;
        width: 100%;
    }
</style>
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
            <h2>Modify The Database</h2>
            <div class="column" style="padding-top: 20px">
                <a class="btn btn-primary btn-lg" href="./index.jsp" role="button"><h4>Home Page</h4></a>
            </div>
        </div>

        <!-- Room Table -->
        <div class="row" style="padding-top: 20px">
            <h3>Modify Room</h3>
        </div>
        <table style="text-align: center; table-layout: fixed; width: 100%">
            <thead>
            <tr> <!-- if anything is mandatory bold in red like the dates in employee -->
                <th>ID</th> <!-- type = int -->
                <th>HotelID</th>  <!-- type = int -->
                <th>HotelChainID</th>  <!-- type = int -->
                <th>Price</th> <!-- type = says int on DB.sql but should be float I think? -->
                <th>Amenities</th> <!-- type = string -->
                <th>Capacity</th> <!-- type = int -->
                <th>Room View</th> <!-- type = string -->
                <th>Extendable</th> <!-- type = bool -->
                <th>Problems</th> <!-- type = bool -->
                <th>Status</th> <!-- type = bool -->
                <th>Delete Customer</th>
            </tr>
            <!-- Add new row functionality -->
            <tr>
                <form>
                    <th>
                        <div class="input-row">
                            <input type="text" name="roomid" id="roomid" placeholder="Room ID" style="text-align: center; width: 100%"/>
                        </div>
                    </th>
                    <th>
                        <div class="input-row">
                            <input type="text" name="hotelid" id="hotelid" placeholder="Hotel ID" style="text-align: center; width: 100%"/>
                        </div>
                    </th>
                    <th>
                        <div class="input-row">
                            <input type="text" name="hotelchainid" id="hotelchainid" placeholder="Hotel Chain ID" style="text-align: center; width: 100%"/>
                        </div>
                    </th>
                    <th>
                        <div class="input-row">
                            <input type="text" name="price" id="price" placeholder="Price" style="text-align: center; width: 100%"/>
                        </div>
                    </th>
                    <th>
                        <div class="input-row">
                            <input type="text" name="amenities" id="amenities" placeholder="Amenities" style="text-align: center; width: 100%"/>
                        </div>
                    </th>
                    <th>
                        <div class="input-row">
                            <input type="text" name="capacity" id="capacity" placeholder="Capacity" style="text-align: center; width: 100%"/>
                        </div>
                    </th>
                    <th>
                        <div class="input-row">
                            <input type="text" name="view" id="view" placeholder="Room View" style="text-align: center; width: 100%"/>
                        </div>
                    </th>
                    <th>
                        <div class="input-row">
                            <input type="text" name="extendable" id="extendable" placeholder="Extendable" style="text-align: center; width: 100%"/>
                        </div>
                    </th>
                    <th>
                        <div class="input-row">
                            <input type="text" name="problems" id="problems" placeholder="Problems" style="text-align: center; width: 100%"/>
                        </div>
                    </th>
                    <th>
                        <div class="input-row">
                            <input type="text" name="status" id="status" placeholder="Status" style="text-align: center; width: 100%"/>
                        </div>
                    </th>
                    <th><button>Add New Room</button></th>
                </form>
            </tr>
            </thead>
            <tbody>
            <!-- We can loop this tr to pull in existing from the db like for customer -->
            <tr> <!-- sample tr, delete after -->
                <td>321</td>
                <td>6</td>
                <td>2</td>
                <td>999.99</td>
                <td>parking</td>
                <td>4</td>
                <td>sea</td>
                <td>true</td>
                <td>true</td>
                <td>false</td>
                <td><button class="deleteBtn" style="display: block">Delete</button></td>
            </tr>
            <!-- Table Rows are generated at the end of tbody -->
            </tbody>
        </table>
        <script>
            const formEL = document.querySelector("form");
            const tbodyEL = document.querySelector('tbody');
            const tableEl = document.querySelector('table');
            function onAddCustomer(e) {
                e.preventDefault();
                const id = document.getElementById('roomid').value;
                const hotelid = document.getElementById('hotelid').value;
                const hotelchainid = document.getElementById('hotelchainid').value;
                const price = document.getElementById('price').value;
                const amenities = document.getElementById('amenities').value;
                const capacity = document.getElementById('capacity').value;
                const view = document.getElementById('view').value;
                const extendable = document.getElementById('extendable').value;
                const problems = document.getElementById('problems').value;
                const status = document.getElementById('status').value;
                tbodyEL.innerHTML += `
        <tr>
            <td>${id}</td>
            <td>${hotelid}</td>
            <td>${hotelchainid}</td>
            <td>${price}</td>
            <td>${amenities}</td>
            <td>${capacity}</td>
            <td>${view}</td>
            <td>${extendable}</td>
            <td>${problems}</td>
            <td>${status}</td>
            <td><button class="deleteBtn" style="display: block">Delete</button></td>
        </tr>
        `;
            }

            function onDeleteCustomer(e) {
                if (!e.target.classList.contains('deleteBtn')) {
                    return;
                }

                const btn = e.target;
                btn.closest('tr').remove();
            }

            formEL.addEventListener('submit', onAddCustomer)
            tableEl.addEventListener('click', onDeleteCustomer)
        </script>
    </div>
</div>
</body>
</html>