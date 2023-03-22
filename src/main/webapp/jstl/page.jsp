<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>Company Name: ${name}</p>
<hr>
<c:forEach var="fruit" items="${fruits}">
    <p>Fruit name: ${fruit}</p>
</c:forEach>
</body>
</html>
