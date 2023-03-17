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

    }
}
