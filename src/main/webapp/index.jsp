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

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

<div class="container mt-5">
    <div class="card shadow-lg p-4 text-center">

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
</div>

<script src="js/script.js"></script>
</body>
</html>
