<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jstl</title>
</head>
<body>
<c:out value="${'hi, jstl world'}"/>
<c:set var="age" value="20" scope="page"/>

<p>Age: ${age}</p>
<c:remove var="age" scope="page"/>
<p>Age: ${age}</p>
</body>
</html>
