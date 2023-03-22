package com.ky.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "JstlServlet", value = "/jstl")
public class JstlServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name="Aptech Computer Education";
        String[] fruits={"Apple","Orange","Banana","Mango"};
        request.setAttribute("name",name);
        request.setAttribute("fruits",fruits);
        request.getRequestDispatcher("jstl/page.jsp").forward(request, response);
    }
}
