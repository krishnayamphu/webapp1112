package com.ky.servlets.users;

import com.ky.dao.UserDAO;
import com.ky.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "UserEditController", value = "/user-edit")
public class UserEditController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id= Integer.parseInt(request.getParameter("id"));
        ArrayList<User> users= UserDAO.getUserById(id);
        request.setAttribute("users",users);
        request.getRequestDispatcher("users/edit.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String email=request.getParameter("email");
        User user=new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setEmail(email);
        user.setId(id);
        UserDAO.updateUser(user);
        response.sendRedirect("users");
    }
}
