<html>
<head>
    <title>Task Manager</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container">
    <h1>Task Manager</h1>

    <form action="addTask" method="post" onsubmit="return validate()">
        <input type="text" name="task" id="taskInput" placeholder="Enter task">
        <button>Add Task</button>
    </form>

    <br>
    <a href="tasks">View Tasks</a>
</div>

<script src="js/script.js"></script>
</body>
</html>
