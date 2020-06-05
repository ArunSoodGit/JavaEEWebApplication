<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  myApplication.models.User: arun1
  Date: 18.04.2020
  Time: 19:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<html>
<head>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <%
    SimpleDateFormat simpleDateFormat= new SimpleDateFormat("yyyy-MM-dd");
  %>
  <title>Welcome</title>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark" >
  <a class="navbar-brand" href="index.jsp"> <img src="img/logo3.png" width="60" height=40/>
    Arun Sood</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item ">
        <a class="nav-link" style="color: white" href="UsersServlet">Baza użytkowników<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="color: white" href="webSocket.jsp">Wykres</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="color: white" href="rest/json">JSON</a>
      </li>
      <li class="nav-item">
        <a  class="nav-link" >Aktualna data: <%= simpleDateFormat.format(new Date())%> </a>
      </li>
    </ul>
    <span class="navbar-text">
    Zalogowano jako:<span style="color: white;margin-right: 20px;margin-left: 10px"><%=request.getUserPrincipal().getName()%></span>

       <a href="logout.jsp" > <button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Wyloguj się</button> </a>
    </span>


  </div>
</nav>
<div class="alert alert-success text-center" role="alert">
Witaj <%=request.getUserPrincipal().getName()%>! Pomyślnie zalogowano!

</div>
<a href="/admin.jsp"> <button class="btn btn-outline-danger">Admin panel</button></a>
<div style="margin-left: auto; margin-right: auto; width: 400px;height: 400px;margin-top: 40px">
  <c:set var="string1" value="Obrazek wygenerowany przez servlet ImageServlet"/>
  <c:set var="string2" value="${fn:toUpperCase(string1)}"/>

  <img  src="/ImageServlet">
  <p style="text-align: center">${string2}</p>
</div>


</body>
</html>
