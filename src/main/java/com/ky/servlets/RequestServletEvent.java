package com.ky.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
@WebListener
@WebServlet(name = "RequestServletEvent", value = "/request-event")
public class RequestServletEvent extends HttpServlet implements ServletRequestListener{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().println("Hello World");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    public void requestDestroyed(ServletRequestEvent sre) {
        System.out.println("after request");
    }

    @Override
    public void requestInitialized(ServletRequestEvent sre) {
        System.out.println("request made");
    }
}
