<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="hello.jsp" method="post">
    <label>Name</label>
    <input type="text" name="name">
    <label>Gender</label>
    <input type="radio" name="g" value="male" checked>Male
    <input type="radio" name="g" value="female">Female
    <button type="submit">Submit</button>
</form>
</body>
</html>
