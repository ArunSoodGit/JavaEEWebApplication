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

<% session.invalidate(); %>
<nav class="navbar navbar-dark bg-dark" >
    <a class="navbar-brand" href="index.jsp"> <img src="img/logo3.png" width="60" height=40/>
        Arun Sood</a>
      Aktualna data: <%= simpleDateFormat.format(new Date())%>
    </span>
    <a href="index.jsp" > <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Zaloguj się</button> </a>
</nav>

<div class="alert alert-success text-center" role="alert">
     Pomyślnie wylogowano!
</div>

</body>
</html>
