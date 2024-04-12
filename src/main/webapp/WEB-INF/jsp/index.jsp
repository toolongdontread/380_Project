<!DOCTYPE html>
<html>
<head>
    <title>Index Page</title>
    <script>
        function changeCan(){
            document.getElementsByTagName("h1")[0].innerHTML = "歡迎來到書店!";
            document.getElementsByTagName("h3")[0].innerHTML = "現時系統暫時未有書籍";
            document.getElementById("loginButton").value = "登入";
            document.getElementById("registerButton").value = "登記";
        }

        function changeEng(){
            document.getElementsByTagName("h1")[0].innerHTML = "Welcome to our book store!";
            document.getElementsByTagName("h3")[0].innerHTML = "There are no books in the system";
            document.getElementById("loginButton").value = "Login";
            document.getElementById("registerButton").value = "Register";
        }
    </script>
</head>
<body>
<button onclick="changeCan()">繁</button>
<button onclick="changeEng()">Eng</button>
<br/><br/>
<c:url var="login" value="/login"/>
<form action="${login}" method="get">
    <input id="loginButton" type="submit" value="Login" />
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
<br/>
<c:url var="register" value="/user/create"/>
<form action="${register}" method="get">
    <input id="registerButton" type="submit" value="Register" />
</form>
<br/>

<h1>Welcome to our book store!</h1>
<c:choose>
    <c:when test="${fn:length(ticketDatabase) == 0}">
        <h3><i>There are no books in the system.</i></h3>
    </c:when>
    <c:otherwise>
        <c:forEach items="${ticketDatabase}" var="entry">
            <a href="<c:url value="/ticket/view/${entry.id}" />">
                <c:out value="${entry.subject}"/></a>
            (Added by: <c:out value="${entry.customerName}"/>)
            <br/>
        </c:forEach>
    </c:otherwise>
</c:choose>
</body>
</html>