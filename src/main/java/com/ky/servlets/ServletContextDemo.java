package com.ky.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ServletContextDemo", value = "/ServletContextDemo")

public class ServletContextDemo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        ServletContext context = getServletContext();
        String user = context.getInitParameter("user");
        PrintWriter pw = response.getWriter();
        pw.print(user);

        pw.print("<br>" + context.getContextPath());

        context.setAttribute("success","Successfully Updated");
    }
}
