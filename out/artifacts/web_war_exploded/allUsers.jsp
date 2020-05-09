<%--
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

    <title>All users</title>
</head>
<body>
<caption><h2>Lista użytkowników</h2></caption>
<a href="register.jsp">
    <button class="btn-success">Dodaj</button>
</a>
<table class="table">


    <thead class="thead-dark">
    <tr>

        <th scope="col">Imię</th>
        <th scope="col">Nazwisko</th>
        <th scope="col">Login</th>
        <th scope="col">Hasło</th>

    </tr>

        <c:forEach var="items" items="${userList}">
            <tr>

                <td> ${items.name}</td>
                <td> ${items.surname}</td>
                <td>${items.login}</td>
                <td>${items.password}</td>

            </tr>



        </c:forEach>

    </thead>
</table>

</body>
</html>
