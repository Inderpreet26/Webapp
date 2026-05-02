<%@ page import="java.util.*, com.app.model.Task" %>

<html>
<head>
    <title>Tasks</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

<div class="container mt-5">
    <div class="card shadow-lg p-4">

        <h2 class="text-center mb-4">📋 Your Tasks</h2>

        <ul class="list-group">
        <%
            List<Task> tasks = (List<Task>) session.getAttribute("tasks");

            if (tasks != null) {
                for (int i = 0; i < tasks.size(); i++) {
        %>
            <li class="list-group-item d-flex justify-content-between align-items-center">
                <%= tasks.get(i).getName() %>
                <a href="deleteTask?id=<%=i%>" class="btn btn-danger btn-sm">Delete</a>
            </li>
        <%
                }
            }
        %>
        </ul>

        <div class="text-center mt-3">
            <a href="index.jsp" class="btn btn-secondary">Back</a>
        </div>

    </div>
</div>

</body>
</html>
