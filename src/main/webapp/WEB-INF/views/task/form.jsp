<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Add Task</title>
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


<div class="w3-row-padding w3-center w3-padding-64" id="category">

    <h2>Create New Task</h2><br>
    <div class="container">
        <div class="form-group">
            <form:form modelAttribute="task" method="post">

                <label>Name</label><br>
                <form:input path="name"/><br><br>
                <label>Description</label><br>
                <form:textarea path="description"/><br><br>
                <label>Choose Project</label><br>
                <form:select path="project.id">
                    <form:options items="${chooseProject}" itemValue="id" itemLabel="name"/>
                </form:select><br><br>
                <label>Deadline</label><br>
                <form:input path="deadline"/><br><br>
                <label>Choose Priority (0-5)</label><br>
                <form:input path="priority"/><br>

                <input type="submit" value="Send">
            </form:form>
        </div>
    </div>
</div>
</body>
</html>