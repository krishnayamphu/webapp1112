package com.ky.servlets.todo;

import com.ky.dao.TodoDAO;
import com.ky.models.Todo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "TodoServlet", value = "/todo")
public class TodoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Todo> todolist = TodoDAO.getAllItems();
        request.setAttribute("todolist", todolist);
        request.getRequestDispatcher("todo/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        TodoDAO.removeItem(id);
        response.sendRedirect("todo");
    }
}
