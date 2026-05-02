package com.app.servlet;

import com.app.model.Task;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.*;

public class AddTaskServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String taskName = req.getParameter("task");

        HttpSession session = req.getSession();
        List<Task> tasks = (List<Task>) session.getAttribute("tasks");

        if (tasks == null) {
            tasks = new ArrayList<>();
        }

        tasks.add(new Task(taskName));
        session.setAttribute("tasks", tasks);

        res.sendRedirect("tasks");
    }
}
