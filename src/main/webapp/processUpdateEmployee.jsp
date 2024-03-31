<%@ page import="com.demo.Employee, com.demo.EmployeeService" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    int hotelId = Integer.parseInt(request.getParameter("hotelId"));
    int hotelChainId = Integer.parseInt(request.getParameter("hotelChainId"));
    String sin = request.getParameter("sin");
    String fullName = request.getParameter("fullName");
    String address = request.getParameter("address");
    String role = request.getParameter("role");

    Employee employee = new Employee(id, hotelId, hotelChainId, sin, fullName, address, role);
    EmployeeService service = new EmployeeService();
    String message = service.updateEmployee(employee);

    // Redirect to avoid form resubmission issues
    response.sendRedirect("db_employee.jsp?message=" + java.net.URLEncoder.encode(message, "UTF-8"));
%>
