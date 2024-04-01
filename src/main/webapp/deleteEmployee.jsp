<%@ page import="com.demo.EmployeeService" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    EmployeeService service = new EmployeeService();
    service.deleteEmployee(id);
    response.sendRedirect("db_employee.jsp");
%>
