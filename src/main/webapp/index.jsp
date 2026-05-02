<html>
<head>
    <title>Task Manager</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="css/style.css">
</head>

<body>

<div class="container mt-5">
    <div class="card shadow-lg p-4">

        <h2 class="text-center mb-4">✨ Task Manager</h2>

        <form action="addTask" method="post" onsubmit="return validate()">
            <div class="input-group">
                <input type="text" name="task" id="taskInput" class="form-control" placeholder="Enter your task...">
                <button class="btn btn-primary">Add</button>
            </div>
        </form>

        <div class="text-center mt-3">
            <a href="tasks" class="btn btn-success">View Tasks</a>
        </div>

    </div>
</div>

<script src="js/script.js"></script>
</body>
</html>
