<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="myApplication.models.User" %>
<%@ page import="myApplication.dao.DataAccess" %><%--
  Created by IntelliJ IDEA.
  User: arun1
  Date: 22.05.2020
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">



    <title></title>
</head>
<body>

<%
    SimpleDateFormat simpleDateFormat= new SimpleDateFormat("yyyy-MM-dd");

%>

<nav class="navbar navbar-dark bg-dark" >
    <a class="navbar-brand" href="#"> Autor projetku: Sood Arun  login:"login" , hasło: "haslo"</a>
    <span class="navbar-text">
      Aktualna data: <%= simpleDateFormat.format(new Date())%>
    </span>
</nav>

<div class="row justify-content-md-center mt-5" >
    <h3>Edytuj dane użytkownika</h3>
</div>

<div class="row justify-content-md-center mt-5"  >
    <form action="UpdateUserServlet" method="post">
        <div class="form-group">
            <label for="imie">Imię</label>
            <input value="${user.name}" type="text" class="form-control" id="imie" name="imie" aria-describedby="imie" placeholder=" Imię">

        </div>
        <div class="form-group">
            <label for="nazwisko">Nazwisko</label>
            <input value="${user.surname}" type="text" class="form-control" id="nazwisko" name="nazwisko" aria-describedby="nazwisko" placeholder=" Naziwsko">

        </div>
        <div class="form-group">
            <label for="marka">Marka</label>
            <input value="${user.mark}" type="text" class="form-control" id="marka" name="marka" aria-describedby="emailHelp" placeholder=" Marka">

        </div>
        <div class="form-group">
            <label for="model">Model</label>
            <input value="${user.model}" type="text" class="form-control" name="model" id="model" placeholder="Model">
        </div>

        <button type="submit" class="btn btn-primary">Dodaj</button>

    </form>

</div>

</body>
</html>
