<%@ page import="com.softserve.itacademy.model.ErrModel" %>
<%@ page import="com.softserve.itacademy.controller.ReadTaskServlet" %>
<%@ page import="javax.servlet.annotation.WebServlet" %><%--
  Created by IntelliJ IDEA.
  User: mark
  Date: 05/01/2021
  Time: 00:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<%response.setStatus(404);%>
<html>
<head>
    <title>Page Not found
    </title>
</head>
<body>
<%@include file="header.html" %>

<h2><strong>Task with ID '<%=request.getParameter("id")%>' not found in To-Do List!
</strong></h2>
<%
    String value = ReadTaskServlet.class.getAnnotation(WebServlet.class).value()[0];
%>
<h4><%="url: " + value%>
</h4>

</body>
</html>
