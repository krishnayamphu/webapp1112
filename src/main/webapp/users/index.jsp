<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td>${user.email}</td>
                <td>${user.createdAt}</td>
                <td>
                    <a href="user-edit?id=${user.id}"><button>Edit</button></a>
                    <form action="users" method="post">
                        <input type="hidden" name="id" value="${user.id}">
                        <button>Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</main>
</body>
</html>
