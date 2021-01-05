<%@ page import="com.softserve.itacademy.model.Priority" %><%--
  Created by IntelliJ IDEA.
  User: Taras Gogol
  Date: 1/4/21
  Time: 7:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Task Page</title>
</head>
<body>
    <%@include file="header.html"%>
    <br>
    <h2>Create new Task</h2>
    <form action="/create-task" method="post">
        <%
            boolean errorFlag = (boolean) request.getAttribute("errorFlag");
            String defTitle;
            if (errorFlag) {
                defTitle = request.getAttribute("defTitle").toString();
        %>
                <p>Task with given name already exists</p>
            <%
            }
            else {
                defTitle = "";
            }
        %>
        <table>
            <tr>
                <td>
                    <label for="titleTask"> Name: </label>
                </td>
                <td>
                    <input type="text" id="titleTask" name="titleTask" value="<%=defTitle%>">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="priority"> Priority: </label>
                </td>
                <td>

                    <select name="priority" id="priority">
                        <%
                            for (Priority priority : Priority.values()) {
                        %>
                            <option value="<%=priority%>"><%=priority.priorityValue%></option>
                        <%
                            }
                        %>
                    </select>

                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="Create">
                </td>
                <td>
                    <input type="reset" value="Clear">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
