<%@ page import="com.demo.EmployeeService, com.demo.Employee" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    EmployeeService service = new EmployeeService();
    Employee employee = service.getEmployeeById(id);
    %>

    <html>
    <head>
        <title>Update Employee</title>
    </head>
    <body>
    <h2>Update Employee</h2>
    <form action="processUpdateEmployee.jsp" method="post">
        <input type="hidden" name="id" value="<%= employee.getId() %>" />
        Hotel ID: <input type="number" name="hotelId" value="<%= employee.getHotelId() %>" required /><br />
        Hotel Chain ID: <input type="number" name="hotelChainId" value="<%= employee.getHotelChainId() %>" required /><br />
        SIN: <input type="text" name="sin" value="<%= employee.getSin() %>" pattern="[0-9]{9}" required /><br />
        Full Name: <input type="text" name="fullName" value="<%= employee.getFullName() %>" required /><br />
        Address: <input type="text" name="address" value="<%= employee.getAddress() %>" required /><br />
        Role: <select name="role" required>
            <option value="manager" <%= "manager".equals(employee.getRole()) ? "selected" : "" %>>Manager</option>
            <option value="front-desk" <%= "front-desk".equals(employee.getRole()) ? "selected" : "" %>>Front Desk</option>
            <option value="maid" <%= "maid".equals(employee.getRole()) ? "selected" : "" %>>Maid</option>
            <option value="janitor" <%= "janitor".equals(employee.getRole()) ? "selected" : "" %>>Janitor</option>
            <option value="valet" <%= "valet".equals(employee.getRole()) ? "selected" : "" %>>Valet</option>
            <option value="chef" <%= "chef".equals(employee.getRole()) ? "selected" : "" %>>Chef</option>
        </select><br />
        <input type="submit" value="Update Employee" />
    </form>
    </body>
    </html>
