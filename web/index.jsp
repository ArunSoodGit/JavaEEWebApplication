<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  myApplication.models.User: arun1
  Date: 18.04.2020
  Time: 19:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
  <a class="navbar-brand" href="#"> HOME</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="UsersServlet">Baza użytkowników<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Pricing</a>
      </li>
      <li class="nav-item">
        <a class="navbar-text " >Aktualna data: <%= simpleDateFormat.format(new Date())%> </a>
      </li>
    </ul>
    <span class="navbar-text">
      Zalogowano jako: <%   %>
    </span>
    <a href="logout.jsp" > <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Wyloguj się</button> </a>

  </div>
</nav>
<h1>Pomyślnie zalogowano!</h1>
</body>
</html>
