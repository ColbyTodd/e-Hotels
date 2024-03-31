<%@ page import="com.demo.ConnectionDB, com.demo.Customer, com.demo.CustomerService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>


<html>
<head>
    <title>Create Customer</title>
</head>
<body>
<%-- Simple form for creating a new customer --%>
<form action="db_customer.jsp" method="post">
    Full Name: <input type="text" name="fullName" /><br />
    Address: <input type="text" name="address" /><br />
    ID Type: <select name="idType">
        <option value="SSN">SSN</option>
        <option value="SIN">SIN</option>
        <option value="driving licence">Driving Licence</option>
    </select><br />
    Registration Date: <input type="date" name="registrationDate" /><br />
    <input type="submit" value="Create Customer" />
</form>

<%
    // Check if the form has been submitted
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        // Collect form data
        String fullName = request.getParameter("fullName");
        String address = request.getParameter("address");
        String idType = request.getParameter("idType");
        java.sql.Date registrationDate = java.sql.Date.valueOf(request.getParameter("registrationDate"));

        // Instantiate Customer object
        Customer customer = new Customer(null, fullName, address, idType, registrationDate);

        // Insert customer into database
        CustomerService customerService = new CustomerService();
        String resultMessage = customerService.createCustomer(customer);

        // Display result
        out.println("<p>" + resultMessage + "</p>");
    }
%>
<h2>Customer List</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Full Name</th>
        <th>Address</th>
        <th>ID Type</th>
        <th>Registration Date</th>
        <th>Action</th>
        <th>Update</th>
    </tr>
    <%
        CustomerService customerService = new CustomerService();
        List<Customer> customers = customerService.getCustomers();
        for(Customer customer : customers){
    %>
    <tr>
        <td><%= customer.getId() %></td>
        <td><%= customer.getFullName() %></td>
        <td><%= customer.getAddress() %></td>
        <td><%= customer.getIdType() %></td>
        <td><%= customer.getRegistrationDate().toString() %></td>
        <td>
            <form action="delete_customer.jsp" method="post">
                <input type="hidden" name="customerId" value="<%= customer.getId() %>" />
                <input type="submit" value="Delete" />
            </form>
        </td>
        <td>
            <form action="updateCustomer.jsp" method="get">
                <input type="hidden" name="customerId" value="<%= customer.getId() %>" />
                <input type="submit" value="Update" />
            </form>
        </td>

    </tr>
    <%
        }
    %>
</table>
</body>
</html>
