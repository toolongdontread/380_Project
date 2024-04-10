<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
</head>
<body>
<c:url var="logoutUrl" value="/logout"/>
<form action="${logoutUrl}" method="post">
    <input type="submit" value="Log out" />
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
<h2>Error page</h2>
<c:choose>
    <c:when test="${empty message}">
        <p>Something went wrong.</p>
        <ul>
            <li>Status Code: ${status}</li>
            <li>Exception: ${exception}</li>
        </ul>
    </c:when>
    <c:otherwise>
        <p>${message}</p>
    </c:otherwise>
</c:choose>
<security:authorize access="hasAnyRole('ADMIN', 'USER')">
    <a href="<c:url value="/ticket" />">Return to book list</a>
</security:authorize>
<br/>
<a href="<c:url value="/" />">Return to index</a>
</body>
</html>