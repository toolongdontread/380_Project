<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
</head>
<body>

<h2>Registration</h2>
<form:form method="POST" modelAttribute="ticketUser">
    <form:label path="username">Username</form:label><br/>
    <form:input type="text" path="username"/><br/><br/>
    <form:label path="password">Password</form:label><br/>
    <form:input type="text" path="password"/><br/><br/>
    <form:label path="fullname">Full Name</form:label><br/>
    <form:input type="text" path="fullname"/><br/><br/>
    <form:label path="email">Email</form:label><br/>
    <form:input type="text" path="email"/><br/><br/>
    <form:label path="address">Address</form:label><br/>
    <form:input type="text" path="address"/><br/><br/>
    <form:label path="roles">Roles</form:label><br/>
    <form:checkbox path="roles" value="ROLE_USER"/>ROLE_USER
    <security:authorize access="hasRole('ADMIN')">
        <form:checkbox path="roles" value="ROLE_ADMIN"/>ROLE_ADMIN
    </security:authorize>
    <br/><br/>
    <input type="submit" value="Register"/>
</form:form>
<br/><br/>
<security:authorize access="hasRole('ADMIN')">
    <a href="<c:url value="/user" />">Return to user list</a>
</security:authorize>
<br/><br/>
<a href="<c:url value="/" />">Return to index</a>
</body>
</html>
