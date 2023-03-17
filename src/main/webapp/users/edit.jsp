<%@ page import="com.ky.models.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Details</title>
</head>
<body>
<header>
    <a href="users">Users</a>
    <a href="user-create">New User</a>
</header>
<form action="user-create" method="post">
    <%
        ArrayList<User> users= (ArrayList<User>) request.getAttribute("users");
        for(User user:users)
        {
    %>
    <label>Username</label>
    <input type="text" name="username" value="<%=user.getUsername()%>" required>
    <br><br>
    <lable>Password</lable>
    <input type="password" name="password" value="<%=user.getPassword()%>" required>
    <br><br>
    <lable>Email</lable>
    <input type="email" name="email" value="<%=user.getEmail()%>">
    <br><br>
    <%
        }
    %>
    <button>Update</button>
</form>
</body>
</html>
