<%@ page import="com.demo.Employee, com.demo.EmployeeService" %>
<%
    int hotelId = Integer.parseInt(request.getParameter("hotelId"));
    int hotelChainId = Integer.parseInt(request.getParameter("hotelChainId"));
    String sin = request.getParameter("sin").trim();
    String fullName = request.getParameter("fullName").trim();
    String address = request.getParameter("address").trim();
    String role = request.getParameter("role");

    Employee newEmployee = new Employee(null, hotelId, hotelChainId, sin, fullName, address, role);
    EmployeeService employeeService = new EmployeeService();

    String message = employeeService.createEmployee(newEmployee);

    // Redirect to avoid form resubmission issues, with a message indicating success or failure
    response.sendRedirect("db_employee.jsp?message=" + java.net.URLEncoder.encode(message, "UTF-8"));
%>
