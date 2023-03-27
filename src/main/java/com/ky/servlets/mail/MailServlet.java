package com.ky.servlets.mail;

import com.ky.mail.JavaMail;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "MailServlet", value = "/mail")
public class MailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("email/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String to = request.getParameter("to");
        String subject = request.getParameter("subject");
        String data = request.getParameter("data");
        JavaMail.sendMail(to, subject, data);
        response.sendRedirect(request.getHeader("referer"));
    }
}
