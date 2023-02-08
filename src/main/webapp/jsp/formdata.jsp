<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Form Data</title>
    <style>
        table{
            border-collapse: collapse;
        }
        th,td{
            border: 1px solid #cccccc;
        }
    </style>
</head>
<body>
<%
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String contact=request.getParameter("contact");
    String message=request.getParameter("message");
%>

<table>
    <tr>
        <th>Name</th>
        <td><%= name%></td>
    </tr>
    <tr>
        <th>Email</th>
        <td><%= email%></td>
    </tr>
    <tr>
        <th>Contact</th>
        <td><%= contact%></td>
    </tr>
    <tr>
        <th>Message</th>
        <td><%= message%></td>
    </tr>
</table>

</body>
</html>
