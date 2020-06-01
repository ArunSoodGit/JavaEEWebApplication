<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">


    <title></title>
</head>
<body>

<%
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
%>


<nav class="navbar navbar-dark bg-dark">
    <a class="navbar-brand" href="index.jsp"> <img src="img/logo3.png" width="60" height=40/>
        Arun Sood</a>
    <span class="navbar-text">
      Aktualna data: <%= simpleDateFormat.format(new Date())%>
    </span>
</nav>

<div class="container" style="margin-top: 50px">

    <div class="col-xl-5 col-lg-6 col-md-8 col-sm-10 mx-auto text-center form p-4">
        <h1 class="display-4 py-2 text-truncate">Witaj!</h1>
        <div class="px-2">
            <form method="post " name="loginForm" action="j_security_check" class="justify-content-center">
                <div class="form-group">
                    <label for="login">Login</label>
                    <input value="tomcat" type="login" class="form-control" id="login" name="j_username"
                           aria-describedby="emailHelp" placeholder=" Login">

                </div>
                <div class="form-group">
                    <label for="password">Hasło</label>
                    <input value="tomcat" type="password" class="form-control" name="j_password" id="password"
                           placeholder="Hasło">
                </div>

                <button type="submit" class="btn btn-primary">Zaloguj się</button>


            </form>
            </div>
        </div>

    </div>

</body>
</html>
