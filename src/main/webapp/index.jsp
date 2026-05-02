<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Task Manager</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <link rel="stylesheet" href="css/style.css">
</head>

<body>

<div class="container mt-5">

    <!-- TOP CARD -->
    <div class="card shadow-lg p-4 text-center mb-4">
        <h2 class="mb-4">
            <i class="fa-solid fa-list-check"></i> Task Manager
        </h2>

        <form action="addTask" method="post" onsubmit="return validate()">
            <div class="input-group">
                <input type="text" name="task" id="taskInput" class="form-control" placeholder="Enter your task..." required>
                <button class="btn btn-primary">
                    <i class="fa-solid fa-plus"></i>
                </button>
            </div>
        </form>

        <div class="mt-4">
            <a href="tasks" class="btn btn-success">
                <i class="fa-solid fa-eye"></i> View Tasks
            </a>
        </div>
    </div>

    <!-- 🔥 NEW SECTION: STATS -->
    <div class="row mb-4">
        <div class="col-md-6">
            <div class="card p-3 shadow text-center">
                <h5>📊 Total Tasks</h5>
                <h2>
                    <%
                        java.util.List tasks = (java.util.List) session.getAttribute("tasks");
                        int count = (tasks == null) ? 0 : tasks.size();
                        out.print(count);
                    %>
                </h2>
            </div>
        </div>

        <div class="col-md-6">
            <div class="card p-3 shadow text-center">
                <h5>🔥 Status</h5>
                <h6>Stay productive 🚀</h6>
            </div>
        </div>
    </div>

    <!-- 🔥 NEW SECTION: RECENT TASKS -->
    <div class="card shadow-lg p-4">
        <h4 class="mb-3">🕒 Recent Tasks</h4>

        <ul class="list-group">
        <%
            java.util.List<com.app.model.Task> tasksList =
                (java.util.List<com.app.model.Task>) session.getAttribute("tasks");

            if (tasksList != null && !tasksList.isEmpty()) {
                for (int i = tasksList.size() - 1; i >= 0 && i >= tasksList.size() - 3; i--) {
        %>
            <li class="list-group-item">
                🔹 <%= tasksList.get(i).getName() %>
            </li>
        <%
                }
            } else {
        %>
            <li class="list-group-item text-center">No recent tasks 😴</li>
        <%
            }
        %>
        </ul>
    </div>

</div>

<script src="js/script.js"></script>
</body>
</html>
