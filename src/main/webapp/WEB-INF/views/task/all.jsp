<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>All Tasks</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<div class="w3-top">
    <div class="w3-bar w3-green">
        <a href="/" class="w3-bar-item w3-button w3-teal w3-hover-white">Logout</a>
        <a href="/user/manage" class="w3-bar-item w3-button w3-teal w3-hover-white">Manage</a>
    </div>
</div>

<div class="w3-container w3-center"><br><br>
    <h2>All Tasks</h2>
</div>

<div class="w3-display-container w3-section">
    <table class="w3-table-all w3-display-middle" style="width:50%">
        <thead>
        <tr class="w3-teal w3-center">
            <th>Name</th>
            <th>Description</th>
            <th>Deadline</th>
            <th>Priority</th>
            <th>Created Date</th>
            <th>Updated Date</th>
            <th>Edit</th>
            <th>Remove</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="task" items="${allTasks}">
            <tr>
                <td>${task.name}</td>
                <br>
                <td>${task.description}</td>
                <br>
                <td>${task.deadline}</td>
                <br>
                <td>${task.priority}</td>
                <br>
                <td>${task.created}</td>
                <br>
                <td>${task.updated}</td>
                <br>
                <td>
                    <form action="edit/${task.id}" method="get">
                        <button class="w3-button w3-blue" type="submit">Edit</button>
                    </form>
                </td>
                <br>
                <td>
                    <form action="delete/${task.id}" method="post">
                       <button class="w3-button w3-red" type="submit">Remove</button>
                    </form>
                </td>
                <br>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
