<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title></title>
  </head>
  <body bgcolor="#a9a9a9">

  <%
    SimpleDateFormat simpleDateFormat= new SimpleDateFormat("yyyy-MM-dd");
    %>
  <h1 align="center">
    Autor projetku: Sood Arun
  </h1>
  <h1 align="center">
    Aktualna data: <%= simpleDateFormat.format(new Date())%>
  </h1>
  <form method="post" action="MyServlet?command=brak">
    <h3>Wpisz swoje imię</h3>
      <input type="text" name="name" value=""  style="font-size: 25px">

    <h3 >Wpisz swoje nazwisko</h3>
      <input type="text" name="surname" value="" style="font-size: 25px">


    <p>
      <button type="submit"  style="width: 310px; height: 40px; background-color: lawngreen" > Przywitaj się :)</button>
    </p>


  </form>
  </form>
  </body>
</html>
