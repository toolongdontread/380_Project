<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <script>
        function changeCan(){
            document.getElementsByTagName("h2")[0].innerHTML = "登記";
            document.getElementById("usernameLabel").innerHTML = "用戶名稱";
            document.getElementById("passwordLabel").innerHTML = "密碼";
            document.getElementById("fullnameLabel").innerHTML = "全名";
            document.getElementById("emailLabel").innerHTML = "電郵";
            document.getElementById("addressLabel").innerHTML = "地址";
            document.getElementById("rolesLabel").innerHTML = "權限";
            document.getElementById("role_user").innerHTML = "一般用戶";
            document.getElementById("submitButton").value = "登記";
        }

        function changeEng(){
            document.getElementsByTagName("h2")[0].innerHTML = "Registration";
            document.getElementById("usernameLabel").innerHTML = "Username";
            document.getElementById("passwordLabel").innerHTML = "Password";
            document.getElementById("fullnameLabel").innerHTML = "Full Name";
            document.getElementById("emailLabel").innerHTML = "Email";
            document.getElementById("addressLabel").innerHTML = "Address";
            document.getElementById("rolesLabel").innerHTML = "Roles";
            document.getElementById("role_user").innerHTML = "ROLE_USER";
            document.getElementById("submitButton").value = "Register";
        }
    </script>
</head>
<body>
<button onclick="changeCan()">繁</button>
<button onclick="changeEng()">Eng</button>
<br/>
<h2>Registration</h2>
<form:form method="POST" modelAttribute="ticketUser">
    <form:label id="usernameLabel" path="username">Username</form:label><br/>
    <form:input type="text" path="username"/><br/><br/>
    <form:label id="passwordLabel" path="password">Password</form:label><br/>
    <form:input type="text" path="password"/><br/><br/>
    <form:label id="fullnameLabel" path="fullname">Full Name</form:label><br/>
    <form:input type="text" path="fullname"/><br/><br/>
    <form:label id="emailLabel" path="email">Email</form:label><br/>
    <form:input type="text" path="email"/><br/><br/>
    <form:label id="addressLabel" path="address">Address</form:label><br/>
    <form:input type="text" path="address"/><br/><br/>
    <form:label id="rolesLabel" path="roles">Roles</form:label><br/>
    <form:checkbox path="roles" value="ROLE_USER" /><label id="role_user">ROLE_USER</label>
    <security:authorize access="hasRole('ADMIN')">
        <form:checkbox path="roles" value="ROLE_ADMIN"/>ROLE_ADMIN
    </security:authorize>
    <br/><br/>
    <input id="submitButton" type="submit" value="Register"/>
</form:form>
<br/><br/>
<security:authorize access="hasRole('ADMIN')">
    <a href="<c:url value="/user"/>">Return to user list</a>
</security:authorize>
<br/><br/>
<a href="<c:url value="/"/>">Return to index</a>
</body>
</html>
