<%@ page import="com.demo.ConnectionDB, com.demo.Customer, com.demo.CustomerService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

        // Use session to pass the result message to the redirected page
        request.getSession().setAttribute("resultMessage", resultMessage);

        // Redirect to prevent form re-submission
        response.sendRedirect("db_customer.jsp");
        return; // Stop further processing
    }

    // Retrieve and clear the message from session after redirect
    String resultMessage = (String) request.getSession().getAttribute("resultMessage");
    if (resultMessage != null) {
        out.println("<p>" + resultMessage + "</p>");
        request.getSession().removeAttribute("resultMessage");
    }
%>

</body>
</html>
