package com.app.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;
import com.app.model.Task;

public class DeleteTaskServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        int index = Integer.parseInt(req.getParameter("id"));

        HttpSession session = req.getSession();
        List<Task> tasks = (List<Task>) session.getAttribute("tasks");

        if (tasks != null && index < tasks.size()) {
            tasks.remove(index);
        }

        res.sendRedirect("tasks");
    }
}
