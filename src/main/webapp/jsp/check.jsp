<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    if(username.equalsIgnoreCase("admin") && password.equals("a123")){
        response.sendRedirect("welcome.jsp");
    }else{
        out.print("Invalid username or password");
    }
%>

</body>
</html>
