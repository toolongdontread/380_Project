<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book List</title>
</head>
<body>
<c:url var="logoutUrl" value="/logout"/>
<form action="${logoutUrl}" method="post">
    <input type="submit" value="Log out" />
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
<br/><br/>
<security:authorize access="hasRole('ADMIN') or principal.username=='${ticket.customerName}'">
    [<a href="<c:url value="/ticket/edit/${ticket.id}" />">Edit</a>]
</security:authorize>
<security:authorize access="hasRole('ADMIN')">
    [<a href="<c:url value="/ticket/delete/${ticket.id}" />">Delete</a>]
</security:authorize>
<br/><br/>
<h2>Book Name: <c:out value="${ticket.subject}"/></h2>
<i>Added by : <c:out value="${ticket.customerName}"/></i><br/><br/>
<i>Book Author : <c:out value="${ticket.body}"/></i><br/><br/>
<i>Price: <c:out value="${ticket.price}"/></i><br/><br/>
<i>Description: <c:out value="${ticket.description}"/></i><br/><br/>
<i>Availability: <c:out value="${ticket.availability}"/></i><br/><br/>
<c:if test="${!empty ticket.attachments}">
    Book images:
    <c:forEach items="${ticket.attachments}" var="attachment" varStatus="status">
        <c:if test="${!status.first}">, </c:if>
        <a href="<c:url value="/ticket/${ticketId}/attachment/${attachment.id}" />">
            <c:out value="${attachment.name}"/></a>
        <security:authorize access="principal.username=='${ticket.customerName}'">
            [<a href="<c:url value="/ticket/${ticketId}/delete/${attachment.id}" />">Delete</a>]
        </security:authorize>
    </c:forEach><br/><br/>
</c:if>
<a href="<c:url value="/ticket" />">Return to book list</a>
</body>
</html>
