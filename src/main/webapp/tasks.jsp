<%@ page import="java.util.*, com.app.model.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tasks</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

<div class="container mt-5">
    <div class="card shadow-lg p-4">

        <h2 class="text-center mb-4">
            <i class="fa-solid fa-clipboard-list"></i> Your Tasks
        </h2>

        <ul class="list-group">
        <%
            List<Task> tasks = (List<Task>) session.getAttribute("tasks");

            if (tasks != null && !tasks.isEmpty()) {
                for (int i = 0; i < tasks.size(); i++) {
        %>
            <li class="list-group-item d-flex justify-content-between align-items-center">
                <span>✅ <%= tasks.get(i).getName() %></span>

                <a href="deleteTask?id=<%=i%>" class="btn btn-danger btn-sm">
                    <i class="fa-solid fa-trash"></i>
                </a>
            </li>
        <%
                }
            } else {
        %>
            <li class="list-group-item text-center">
                No tasks yet 😴
            </li>
        <%
            }
        %>
        </ul>

        <div class="text-center mt-4">
            <a href="index.jsp" class="btn btn-secondary">
                ⬅ Back
            </a>
        </div>

    </div>
</div>

</body>
</html>
