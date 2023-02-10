<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Login</title>
    <style>
        p{
            color:red;
        }
    </style>
</head>
<body>
<form action="login" method="post">
    <%
        if(request.getAttribute("err")!=null){
            out.print("<p>"+request.getAttribute("err")+"</p>");
        }
    %>
    <input type="text" name="username" placeholder="username">
    <br><br>
    <input type="password" name="password" placeholder="password">
    <br><br>
    <button>Login</button>
</form>
</body>
</html>
