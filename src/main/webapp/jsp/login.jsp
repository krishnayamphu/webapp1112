<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Form</title>
</head>
<body>
<h3>User Login</h3>
<form action="check.jsp" method="post">
    <input type="text" placeholder="Username" name="username" required>
    <br><br>
    <input type="password" placeholder="Password" name="password" required>
    <br><br>
    <button type="submit">Login</button>
</form>
</body>
</html>
