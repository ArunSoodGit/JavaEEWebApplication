<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  myApplication.models.User: arun1
  Date: 19.04.2020
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <title>All users</title>
</head>
<body>
<%
    SimpleDateFormat simpleDateFormat= new SimpleDateFormat("yyyy-MM-dd");
%>
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
                <a class="nav-link"style="color: white" href="webSocket.jsp">Wykres</a>
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
       <a href="logout.jsp" > <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Wyloguj się</button> </a>
    </span>


    </div>
</nav>
<div style="width:80%;margin-right: auto;margin-left: auto ">
    <table class="table">
        <a href="newUser.jsp">
            <button class="btn btn-success" style="margin-top: 20px;margin-bottom: 20px"><i class="fas fa-user-plus"></i>Dodaj</button>
        </a>

        <thead class="thead-dark">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Imię</th>
            <th scope="col">Nazwisko</th>
            <th scope="col">Marka</th>
            <th scope="col">Model</th>
            <th scope="col"></th>
            <th scope="col"></th>
        </tr>

        <c:forEach var="user" items="${userList}">
            <tr>

                <td> ${user.id}</td>
                <td> ${user.name}</td>
                <td>${user.surname}</td>
                <td>${user.mark}</td>
                <td>${user.model}</td>
                <td><a href="/UpdateUserServlet?id=${user.getId()}"><i class="fas fa-user-edit"></i></a></td>
                <td><a style="color: red" href="DeleteUserServlet?id=${user.id}"><i class="fas fa-trash"></i></a></td>

            </tr>



        </c:forEach>

        </thead>
    </table>
</div>


</body>
</html>
