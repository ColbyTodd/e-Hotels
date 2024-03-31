<%@ page import="com.demo.ConnectionDB, com.demo.Employee, com.demo.EmployeeService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<html>
<head>
    <title>Employee Management</title>
</head>
<body>
<h2>Add New Employee</h2>
<form action="createEmployee.jsp" method="post">
    Hotel ID: <input type="number" name="hotelId" required /><br />
    Hotel Chain ID: <input type="number" name="hotelChainId" required /><br />
    SIN: <input type="text" name="sin" pattern="[0-9]{9}" required /><br />
    Full Name: <input type="text" name="fullName" required /><br />
    Address: <input type="text" name="address" required /><br />
    Role: <select name="role" required>
        <option value="">Select Role</option>
        <option value="manager">Manager</option>
        <option value="front-desk">Front Desk</option>
        <option value="maid">Maid</option>
        <option value="janitor">Janitor</option>
        <option value="valet">Valet</option>
        <option value="chef">Chef</option>
    </select><br />
    <input type="submit" value="Add Employee" />
</form>

<h2>Employee List</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Hotel ID</th>
        <th>Hotel Chain ID</th>
        <th>SIN</th>
        <th>Full Name</th>
        <th>Address</th>
        <th>Role</th>
        <th>Delete</th>
        <th>Update</th>
    </tr>
    <%
        EmployeeService employeeService = new EmployeeService();
        List<Employee> employees = employeeService.getEmployees();
        for(Employee employee : employees){
    %>
    <tr>
        <td><%= employee.getId() %></td>
        <td><%= employee.getHotelId() %></td>
        <td><%= employee.getHotelChainId() %></td>
        <td><%= employee.getSin() %></td>
        <td><%= employee.getFullName() %></td>
        <td><%= employee.getAddress() %></td>
        <td><%= employee.getRole() %></td>
        <td>
            <form action="deleteEmployee.jsp" method="post">
                <input type="hidden" name="id" value="<%= employee.getId() %>" />
                <input type="submit" value="Delete" />
            </form>
        </td>
        <td>
            <a href="updateEmployee.jsp?id=<%= employee.getId() %>">Update</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
