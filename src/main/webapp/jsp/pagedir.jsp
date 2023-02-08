<%@ page import="java.time.LocalDate" %>
<%@ page import="com.ky.Employee" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<p>Company Name: <%= Employee.getCompanyName() %></p>
<p><%= LocalDate.now() %></p>

</body>
</html>
