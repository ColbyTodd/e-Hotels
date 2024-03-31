<%@ page import="com.demo.CustomerService, com.demo.Customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int customerId = Integer.parseInt(request.getParameter("customerId"));
    String fullName = request.getParameter("fullName");
    String address = request.getParameter("address");
    String idType = request.getParameter("idType");
    java.sql.Date registrationDate = java.sql.Date.valueOf(request.getParameter("registrationDate"));

    Customer customer = new Customer(customerId, fullName, address, idType, registrationDate);
    CustomerService service = new CustomerService();
    String message = service.updateCustomer(customer);

    response.sendRedirect("db_customer.jsp?message=" + java.net.URLEncoder.encode(message, "UTF-8"));
%>
