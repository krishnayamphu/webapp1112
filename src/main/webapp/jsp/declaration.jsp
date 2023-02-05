<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    int getMaxSpeed() {
        return 200;
    }
%>

<p>Maximum Bike Speed is:<%= getMaxSpeed() %></p>
</body>
</html>
