<%@ page import="com.softserve.itacademy.model.Task" %><%--
  Created by IntelliJ IDEA.
  User: mark
  Date: 05/01/2021
  Time: 01:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit existing task</title>
</head>
<body>
<%@include file="header.html" %>
<form action="/edit-task" method="post">
    <table>
        <% Task task = (Task) request.getAttribute("task"); %>
        <tr>
            <td>
                <label for="id">Id:</label>
            </td>
            <td>
                <input type="text" id="id" name="id" value="<%= task.getId()%>" disabled>
            </td>
        </tr>
        <tr>

            <td>
                <label for="title">Title:</label>
            </td>
            <td>
                <input type="text" id="title" name="title" value="<%= task.getTitle()%>">
            </td>

        </tr>
        <tr>
            <td>Priority:</td>
            <td>
                <strong><%= task.getPriority()%>
                </strong>
            </td>
        </tr>

        <tr>
            <td>
                <input type="submit" value="Update">
            </td>

            <td>
                <input type="submit" value="Clear">
            </td>
        </tr>

    </table>

</form>
</body>
</html>
