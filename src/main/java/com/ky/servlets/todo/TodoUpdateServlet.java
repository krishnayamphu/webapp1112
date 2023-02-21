package com.ky.servlets.todo;

import com.ky.dao.TodoDAO;
import com.ky.models.Todo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "TodoUpdateServlet", value = "/todo-update")
public class TodoUpdateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String status = request.getParameter("status");
        boolean checked = false;
        if (status!=null) {
            checked = true;
        }
        Todo todo = new Todo();
        todo.setId(id);
        todo.setStatus(checked);
        TodoDAO.updateItem(todo);
        System.out.println(status);
        response.sendRedirect("todo");
    }
}
