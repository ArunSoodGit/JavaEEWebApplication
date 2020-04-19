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


    <nav class="navbar navbar-dark bg-dark" >
      <a class="navbar-brand" href="#"> Autor projetku: Sood Arun  login:"login" , hasło: "haslo"</a>
      <span class="navbar-text">
      Aktualna data: <%= simpleDateFormat.format(new Date())%>
    </span>
    </nav>

  <div class="row justify-content-md-center mt-5" >
    <h3>Witaj!</h3>
  </div>

  <div class="row justify-content-md-center mt-5"  >
      <form action="Login" method="post">
        <div class="form-group">
          <label for="login">Login</label>
          <input type="login" class="form-control" id="login" name="login" aria-describedby="emailHelp" placeholder=" Login">

        </div>
        <div class="form-group">
          <label for="password">Hasło</label>
          <input type="password" class="form-control" name="password" id="password" placeholder="Hasło">
        </div>

        <button type="submit" class="btn btn-primary">Zaloguj się</button>
      </form>
  </div>

  </body>
</html>
