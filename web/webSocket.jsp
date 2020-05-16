<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: arun1
  Date: 15.05.2020
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>JSP Page</title>
    <%
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    %>
</head>
<body>

<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script language="javascript" type="text/javascript">


    var dataPointsParam = [];
    var webSocketTimer = setInterval(doSend, 533);

    var wsUri = getRootUri() + "/endpoint";

    function getRootUri() {
        var wsUri = (location.protocol === "http:" ? "ws://" : "wss://");
        return wsUri + (document.location.hostname === "" ?
            "localhost" :
            document.location.hostname) + ":" +
            (document.location.port === "" ? "8080" :
                document.location.port);
    }

    function init() {
        // output = document.getElementById("output");
        initWebSocket();
    }

    function initWebSocket() {
        websocket = new WebSocket(wsUri);
        websocket.onopen = function (evt) {
            onOpen(evt);
        };
        websocket.onmessage = function (evt) {
            onMessage(evt);
        };
        websocket.onerror = function (evt) {
            onError(evt);

        };
    }

    function onOpen() {
        writeToScreen("CONNCETED");
    }

    function onMessage(evt) {
        // writeToScreen("RECEIVED" + evt.data);
        var dataArrayJSON = JSON.parse(evt.data);
        for (i = 0; i < dataArrayJSON.length; i++) {
            dataPointsParam[i] = {label: i, y: dataArrayJSON[i]};
        }
        drawChart(dataPointsParam);
    }

    function onError(evt) {
        writeToScreen('Error' +
            evt.data);
    }

    function drawChart(dataPointsParam) {


        var chart = new CanvasJS.Chart("chartContainer", {
            animationEnabled: false,
            theme: "light2",
            title: {
                text: "Wykres z wykorzystaniem WebSocket"
            },
            axisX: {
                title: "oś x"
            },
            axisY: {
                title: "oś y"
            },
            data: [{
                type: "column",
                yValueFormatString: "#,##0mn tonnes",
                dataPoints: dataPointsParam
            }]
        });
        chart.render();

    }


    function doSend(message) {


        websocket.send(message);
    }

    /*  function writeToScreen(message) {
          var pre = document.getElementById("messageID");
          pre.value = message;
      }
  */

    window.addEventListener("load", init, false);

</script>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="index.jsp"> <img src="img/logo3.png" width="60" height=40/>
        Arun Sood</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText"
            aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
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
                <a class="nav-link" style="color: white" href="#">Pricing</a>
            </li>
            <li class="nav-item">
                <a class="nav-link">Aktualna data: <%= simpleDateFormat.format(new Date())%>
                </a>
            </li>
        </ul>
        <span class="navbar-text">
            Zalogowano jako: <span style="color: white;margin-right: 20px;margin-left: 10px"><%=request.getUserPrincipal().getName()%></span>
       <a href="logout.jsp"> <button class="btn btn-outline-success my-2 my-sm-0"
                                     type="submit">Wyloguj się</button> </a>
    </span>


    </div>
</nav>

<div id="chartContainer"
     style="height: 370px; width: 800px; margin-left:auto; margin-right: auto; margin-top: 100px "></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>
