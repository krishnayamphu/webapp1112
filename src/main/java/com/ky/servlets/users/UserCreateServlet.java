package com.ky.servlets.users;

import com.ky.dao.UserDAO;
import com.ky.models.User;
import org.apache.commons.codec.digest.DigestUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UserCreateServlet", value = "/user-create")
public class UserCreateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("users/create.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String hashPassword = DigestUtils.sha256Hex(password);
        String email=request.getParameter("email");
        User user=new User(username,hashPassword,email);
        UserDAO.addUser(user);
        response.sendRedirect(request.getHeader("referer"));
    }
}
