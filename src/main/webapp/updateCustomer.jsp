<%@ page import="com.demo.CustomerService, com.demo.Customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Customer</title>
</head>
<body>
<%
    int customerId = Integer.parseInt(request.getParameter("customerId"));
    CustomerService customerService = new CustomerService();
    Customer customerToUpdate = customerService.getCustomerById(customerId);
%>
<h2>Update Customer Details</h2>
<form action="processUpdateCustomer.jsp" method="post">
    <input type="hidden" name="customerId" value="<%= customerToUpdate.getId() %>" />
    Full Name: <input type="text" name="fullName" value="<%= customerToUpdate.getFullName() %>" /><br />
    Address: <input type="text" name="address" value="<%= customerToUpdate.getAddress() %>" /><br />
    ID Type: <input type="text" name="idType" value="<%= customerToUpdate.getIdType() %>" /><br />
    Registration Date: <input type="date" name="registrationDate" value="<%= customerToUpdate.getRegistrationDate().toString() %>" /><br />
    <input type="submit" value="Update Customer" />
</form>
</body>
</html>
