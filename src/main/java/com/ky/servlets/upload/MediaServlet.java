package com.ky.servlets.upload;

import com.ky.media.MediaFile;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "MediaServlet", value = "/media")
public class MediaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<String> files= MediaFile.allFiles(getServletContext().getRealPath("/uploads"));
        request.setAttribute("files",files);
        request.getRequestDispatcher("fileupload/media.jsp").forward(request,response);
    }
}
