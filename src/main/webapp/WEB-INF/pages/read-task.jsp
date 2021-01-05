<%@ page import="com.softserve.itacademy.model.Task" %><%--
  Created by IntelliJ IDEA.
  User: mark
  Date: 05/01/2021
  Time: 00:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Read existing task</title>
</head>
<body>
<%@include file="header.html" %>
<br>
<h2>Read existing task</h2>
<table>
    <% Task task = (Task) request.getAttribute("task"); %>

    <tr>
        <td>Id:</td>
        <td>
            <strong><%= task.getId()%>
            </strong>
        </td>
    </tr>
    <tr>
        <td>Title:</td>
        <td>
            <strong><%= task.getTitle()%>
            </strong>
        </td>
    </tr>
    <tr>
        <td>Priority:</td>
        <td>
            <strong><%= task.getPriority()%>
            </strong>
        </td>
    </tr>
</table>
</body>
</html>
