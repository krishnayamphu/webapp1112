<%@ page import="java.util.ArrayList" %>
<%@ page import="com.ky.models.Todo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Todo Items</title>
</head>
<body>
<form action="todo-add" method="post">
    <input type="text" name="item" placeholder="Add todo item" required>
    <button>Add</button>
</form>
<table>
    <%
        ArrayList<Todo> items= (ArrayList<Todo>) request.getAttribute("todolist");
        for (Todo todo:items) {
    %>

    <tr>
        <td>

        </td>
        <td>
            <%=todo.getItems()%>
        </td>
        <td>
            <form action="todo-update" method="post">
                <input type="checkbox" <%= todo.isStatus()==true?"checked":"" %> value="<%= todo.isStatus() %>" name="status">
                <input type="hidden" value="<%= todo.getId() %>" name="id">
                <button>Update</button>
            </form>
            <form action="todo" method="post">
                <input type="hidden" value="<%= todo.getId() %>" name="id">
                <button>Remove</button>
            </form>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
