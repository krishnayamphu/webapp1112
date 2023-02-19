<%@ page import="java.util.ArrayList" %>
<%@ page import="com.ky.models.Todo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Todo Items</title>
</head>
<body>
<h3>All Todo Items</h3>
<table>
    <tr>
        <th>Items</th>
        <th>Action</th>
    </tr>
    <%
        ArrayList<Todo> items= (ArrayList<Todo>) request.getAttribute("todolist");
        for (Todo todo:items) {
    %>

    <tr>
        <td><%=todo.getItems()%></td>
        <td>
            <a href="">Edit</a>
            <a href="">Delete</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
