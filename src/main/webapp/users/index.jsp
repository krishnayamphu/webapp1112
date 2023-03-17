<%@ page import="java.util.ArrayList" %>
<%@ page import="com.ky.models.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Registration</title>
    <style>
        table{
            border-collapse: collapse;
        }
        th,td{
            border-bottom: 1px solid #ccc;
            padding: 5px 10px;
        }
    </style>
</head>
<body>
<header>
    <a href="users">Users</a>
    <a href="user-create">New User</a>
</header>
<main>
    <h3>All Users</h3>
    <table>
        <tr>
            <th>#ID</th>
            <th>Username</th>
            <th>Password</th>
            <th>Email</th>
            <th>Created Date</th>
            <th>Action</th>
        </tr>
        <%
            ArrayList<User> users= (ArrayList<User>) request.getAttribute("users");
            for(User user:users)
            {
                %>
        <tr>
            <td><%= user.getId()%></td>
            <td><%= user.getUsername()%></td>
            <td><%= user.getPassword()%></td>
            <td><%= user.getEmail()%></td>
            <td><%= user.getCreatedAt()%></td>
            <td>
                <a href="user-edit?id=<%=user.getId()%>"><button>Edit</button></a>
                <form action="users" method="post">
                    <input type="hidden" name="id" value="<%=user.getId()%>">
                    <button>Delete</button>
                </form>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</main>
</body>
</html>
