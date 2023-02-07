<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name=request.getParameter("name");
    String gender=request.getParameter("g");
    out.print("Your name is: "+name);
    out.print("<br>Gender: "+gender);
%>