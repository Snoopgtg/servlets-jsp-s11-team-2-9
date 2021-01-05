<%@ page import="com.softserve.itacademy.model.ErrModel" %><%--
  Created by IntelliJ IDEA.
  User: mark
  Date: 05/01/2021
  Time: 00:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <% ErrModel model = (ErrModel) request.getAttribute("error"); %>

    <title><%=model.getTitle() %>
    </title>
</head>
<body>
<%@include file="header.html" %>

<h2><strong><%=model.getMessage()%>
</strong></h2>

<br/>
<p><%="url: " + model.getUrl()%>
</p>

</body>
</html>
