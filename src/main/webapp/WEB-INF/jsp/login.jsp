<!DOCTYPE html>
<html>
<head>
    <script>
        function changeCan(){
            document.getElementsByTagName("h2")[0].innerHTML = "登入";
            document.getElementById("usernameLabel").innerHTML = "用戶名稱";
            document.getElementById("passwordLabel").innerHTML = "密碼";
            document.getElementById("submitButton").value = "登入";
            document.getElementsByTagName("a")[0].innerHTML = "返回目錄";
        }

        function changeEng(){
            document.getElementsByTagName("h2")[0].innerHTML = "Login";
            document.getElementById("usernameLabel").innerHTML = "Username";
            document.getElementById("passwordLabel").innerHTML = "Password";
            document.getElementById("submitButton").value = "Login";
            document.getElementsByTagName("a")[0].innerHTML = "Return to index";
        }
    </script>
    <title>Login</title>
</head>
<body>
<button onclick="changeCan()">繁</button>
<button onclick="changeEng()">Eng</button>
<br/>
<c:if test="${param.error != null}">
    <p>Login failed.</p>
</c:if>
<h2>Login</h2>
<form action="login" method="POST">
    <label id="usernameLabel" for="username">Username</label><br/>
    <input type="text" id="username" name="username"/><br/><br/>
    <label id="passwordLabel" for="password">Password</label><br/>
    <input type="password" id="password" name="password"/><br/><br/>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <input id="submitButton" type="submit" value="Log In"/>
</form>
<br/><br/>
<a href="<c:url value="/" />">Return to index</a>
</body>
</html>
