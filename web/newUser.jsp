<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">



    <title></title>
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

<div class="row justify-content-md-center mt-5" >
    <h3>Dodaj nowego użytkwonika</h3>
</div>

<div class="row justify-content-md-center mt-5"  >
    <form action="AddUserServlet" method="post">
        <div class="form-group">
            <label for="imie">Imię</label>
            <input type="text" class="form-control" id="imie" name="imie" aria-describedby="imie" placeholder=" Imię">

        </div>
        <div class="form-group">
            <label for="nazwisko">Nazwisko</label>
            <input type="text" class="form-control" id="nazwisko" name="nazwisko" aria-describedby="nazwisko" placeholder=" Naziwsko">

        </div>
        <div class="form-group">
            <label for="marka">Marka</label>
            <input type="text" class="form-control" id="marka" name="marka" aria-describedby="emailHelp" placeholder=" Marka">

        </div>
        <div class="form-group">
            <label for="model">Model</label>
            <input type="text" class="form-control" name="model" id="model" placeholder="Model">
        </div>

        <button type="submit" class="btn btn-primary">Dodaj</button>

    </form>

</div>

</body>
</html>
