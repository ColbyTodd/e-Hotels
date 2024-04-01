<%@ page import="com.demo.CustomerService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int customerId = Integer.parseInt(request.getParameter("customerId"));
    CustomerService customerService = new CustomerService();
    String message = customerService.deleteCustomer(customerId);
    response.sendRedirect("db_customer.jsp");
%>
<html>
<head>
    <title>Delete Customer</title>
</head>
<body>
    <p><%= message %></p>
    <a href="db_customer.jsp">Back to Customer List</a>
</body>
</html>
