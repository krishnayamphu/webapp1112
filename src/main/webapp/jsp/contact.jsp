<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact</title>
</head>
<body>
<%@include file="header.jsp"%>
<%@include file="nav.jsp"%>
<main>
    <h1>Contact Us</h1>
    <form action="formdata.jsp" method="post">
        <input type="text" placeholder="Name" name="name">
        <br><br>
        <input type="email" placeholder="Email" name="email">
        <br><br>
        <input type="text" placeholder="Contact Number" name="contact">
        <br><br>
        <textarea cols="30" rows="10" placeholder="Message" name="message"></textarea>
        <br><br>
        <button type="submit">Send</button>
    </form>
</main>
<%@include file="footer.jsp"%>
</body>
</html>
