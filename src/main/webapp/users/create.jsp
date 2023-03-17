<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Registration</title>
</head>
<body>
<header>
    <a href="users">Users</a>
    <a href="user-create">New User</a>
</header>
<form action="user-create" method="post">
    <label>Username</label>
    <input type="text" name="username" required>
    <br><br>
    <lable>Password</lable>
    <input type="password" name="password" required>
    <br><br>
    <lable>Email</lable>
    <input type="email" name="email">
    <br><br>
    <button>Register</button>
</form>
</body>
</html>
