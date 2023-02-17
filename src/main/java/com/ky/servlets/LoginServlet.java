package com.ky.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("user-login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter pw = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin") && password.equals("a123")) {
           HttpSession session=request.getSession();
           session.setAttribute("user",username);
           response.sendRedirect("welcome");
        } else {
            String msg = "Invalid Username or Password";
            request.setAttribute("err", msg);
            request.getRequestDispatcher("user-login.jsp").include(request, response);
        }
    }
}
