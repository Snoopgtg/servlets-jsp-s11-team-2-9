<%--
  Created by IntelliJ IDEA.
  User: Taras Gogol
  Date: 06/01/2021
  Time: 00:12
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<%response.setStatus(HttpServletResponse.SC_NOT_FOUND);%>
<html>
<head>
    <title>Page Not found
    </title>
</head>
<body>
<%@include file="header.html" %>

<h2><strong>Task with ID '<%=request.getParameter("id")%>' not found in To-Do List!
</strong></h2>

<h4>url: ${requestScope['javax.servlet.forward.request_uri']}
</h4>

</body>
</html>
