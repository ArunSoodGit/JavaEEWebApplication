<%@ page import="myApplication.dao.DataAccess" %><%--
  Created by IntelliJ IDEA.
  User: arun1
  Date: 15.05.2020
  Time: 23:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="u" class="myApplication.models.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    DataAccess dataAccess = new DataAccess();
    dataAccess.delete(u.getId());
    response.sendRedirect("UsersServlet");
%>
</body>
</html>
