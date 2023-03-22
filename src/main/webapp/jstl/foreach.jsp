<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jstl</title>
</head>
<body>
<c:forEach var="i" begin="1" end="5">
    <p>${i}</p>
</c:forEach>
</body>
</html>
