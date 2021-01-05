<%@ page import="com.softserve.itacademy.model.Task" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>To-do list</title>
</head>
<body>
<%@include file="header.html" %>
<div align="left">
    <table border="1" cellpadding="5">
        <caption><h2>List of Tasks</h2></caption>
        <tr>
            <th>No.</th>
            <th>Name</th>
            <th>Priority</th>
            <th>Operation</th>

        </tr>
        <%
            for(Task task : (List<Task>)request.getAttribute("tasks")){

            %>
        <tr>
            <td><%=task.getId()%></td>
            <td><%=task.getTitle()%></td>
            <td><%=task.getPriority()%></td>
            <td>
                <a href="/read-task?id=<%=task.getId()%>">Read</a>
                <a href="/edit-task?id=<%=task.getId()%>">Edit</a>
                <a href="/delete-task?id=<%=task.getId()%>">Delete</a>
            </td>
        </tr>

        <%
            }
        %>

    </table>
</div>
</body>
</html>
