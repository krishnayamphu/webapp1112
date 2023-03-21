<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="income" scope="session" value="${4000*4}"/>
<c:if test="${income > 8000}">
<p>My income is: <c:out value="${income}"/><p>
    </c:if>

    <c:set var="p" value="${50}" scope="session"/>
    <c:choose>
    <c:when test="${p>=80}">
<p>Distinction</p>
</c:when>
<c:when test="${p>=60}">
    <p>First</p>
</c:when>
<c:when test="${p>=45}">
    <p>Second</p>
</c:when>
<c:when test="${p>=35}">
    <p>Third</p>
</c:when>
<c:otherwise>
    <p>Fail</p>
</c:otherwise>
</c:choose>

</body>
</html>
