<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Compose Email</title>
</head>
<body>

<form action="mail" method="post">
    <input type="email" name="to" placeholder="To" required>
    <br><br>
    <input type="text" name="subject" placeholder="Subject" required>
    <br><br>
    <textarea name="data" cols="30" rows="10" placeholder="Message"></textarea>
    <br><br>
    <button>Send</button>
</form>
</body>
</html>
