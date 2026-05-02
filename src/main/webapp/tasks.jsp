<%@ page import="java.util.*, com.app.model.Task" %>

<html>
<head>
    <title>Tasks</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container">
<h2>Task List</h2>

<ul>
<%
    List<Task> tasks = (List<Task>) session.getAttribute("tasks");

    if (tasks != null) {
        for (int i = 0; i < tasks.size(); i++) {
%>
    <li>
        <%= tasks.get(i).getName() %>
        <a href="deleteTask?id=<%=i%>">❌</a>
    </li>
<%
        }
    }
%>
</ul>

<a href="index.jsp">Back</a>
</div>

</body>
</html>
