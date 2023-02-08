<%@ page isErrorPage="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
</head>
<body>
<h1>Hmm, Some error occurred</h1>
<p>
    <a href="/webapp">Back to Home</a>
</p>
<hr>
<p>
    The exception is: <%= exception %>
</p>

</body>
</html>
