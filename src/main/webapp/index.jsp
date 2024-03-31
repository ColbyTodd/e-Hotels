<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>E-Hotel Booking Application</title>
</head>
<body>
    <!-- Option Javascript: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <div class="container-fluid">
        <!-- Title + Choosing to be a customer or employee -->
        <div class="text-center">
            <div class="row">
                <h2 style="padding: 100px">E-Hotel Booking Application</h2>
            </div>
            <div class="row">
                <h2>Are You A Customer Or An Employee?</h2>
                <div class="column" style="padding-top: 20px">
                    <a class="btn btn-primary btn-lg" href="./customer.jsp" role="button"><h4>Customer</h4></a>
                    <a class="btn btn-primary btn-lg" href="./employee.jsp" role="button"><h4>Employee</h4></a>
                </div>
            </div>
            <div class="row">
                <div class="column" style="padding-top: 20px">
                    <a class="btn btn-primary btn-lg" href="./db_views.jsp" role="button"><h4>Views</h4></a>
                </div>
            </div>
            <div class="row">
                <div class="column" style="padding-top: 20px">
                    <a class="btn btn-primary btn-lg" href="db_customer.jsp" role="button"><h4>Modify Customers</h4></a>
                    <a class="btn btn-primary btn-lg" href="db_employee.jsp" role="button"><h4>Modify Employees</h4></a>
                    <a class="btn btn-primary btn-lg" href="db_hotel.jsp" role="button"><h4>Modify Hotels</h4></a>
                    <a class="btn btn-primary btn-lg" href="db_room.jsp" role="button"><h4>Modify Rooms</h4></a>
                </div>
            </div>
        </div>
        <h1></h1>
    </div>
</body>
</html>
