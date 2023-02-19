package com.ky.servlets.todo;

import com.ky.dao.TodoDAO;
import com.ky.models.Todo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "TodoAddServlet", value = "/todo-add")
public class TodoAddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("todo/create.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String item=request.getParameter("item");
        TodoDAO.addItem(new Todo(item,false));
        System.out.println("item added");
    }
}
