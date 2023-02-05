<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    out.print("Welcome to jsp");
%>

<p>
    <%
        int x=5;
        out.print("Value of  x: "+x);
    %>
</p>

<%
    for(int i=1; i<=5; i++){
        out.print("<p>"+i+"</p>");
    }
%>

</body>
</html>
