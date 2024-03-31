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

    <!-- Customer Table -->
    <div class="row" style="padding-top: 20px">
      <h3>Modify Customer</h3>
    </div>
    <table style="text-align: center; table-layout: fixed; width: 100%">
      <thead>
      <tr> <!-- if anything is mandatory bold in red like the dates in employee -->
        <th>ID</th> <!-- type = int -->
        <th>Full Name</th>  <!-- type = string -->
        <th>Address</th>  <!-- type = string -->
        <th>ID Type</th> <!-- type = string -->
        <th>Register Date</th> <!-- type = string (I think?) -->
        <th>Delete Customer</th>
      </tr>
      <!-- Add new row functionality -->
      <tr>
        <form>
          <th>
            <div class="input-row">
              <input type="text" name="id" id="id" placeholder="Customer ID" style="text-align: center; width: 100%"/>
            </div>
          </th>
          <th>
            <div class="input-row">
              <input type="text" name="name" id="name" placeholder="Customer Name" style="text-align: center; width: 100%"/>
            </div>
          </th>
          <th>
            <div class="input-row">
              <input type="text" name="address" id="address" placeholder="Address" style="text-align: center; width: 100%"/>
            </div>
          </th>
          <th>
            <div class="input-row">
              <input type="text" name="type" id="type" placeholder="SSN, SIN or driving licence" style="text-align: center; width: 100%"/>
            </div>
          </th>
          <th>
            <div class="input-row">
              <input type="date" name="date" id="date" placeholder="Register Date" style="text-align: center; width: 100%"/>
            </div>
          </th>
          <th><button>Add New Customer</button></th>
        </form>
      </tr>
      </thead>
      <tbody>
      <!-- We can loop this tr to pull in existing from the db like for customer -->
      <tr> <!-- sample tr, delete after -->
        <td>300245080</td>
        <td>Viv Bala</td>
        <td>64 Abbyhill Drive</td>
        <td>driving licence</td>
        <td>2024-04-01</td>
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
        const id = document.getElementById('id').value;
        const name = document.getElementById('name').value;
        const address = document.getElementById('address').value;
        const type = document.getElementById('type').value;
        const date = document.getElementById('date').value;
        tbodyEL.innerHTML += `
        <tr>
            <td>${id}</td>
            <td>${name}</td>
            <td>${address}</td>
            <td>${type}</td>
            <td>${date}</td>
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