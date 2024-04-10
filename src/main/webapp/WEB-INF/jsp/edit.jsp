<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book Edit</title>
</head>
<body>
<c:url var="logoutUrl" value="/logout"/>
<form action="${logoutUrl}" method="post">
    <input type="submit" value="Log out" />
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>

<h2>Edit ${ticket.subject}</h2>
<form:form method="POST" enctype="multipart/form-data" modelAttribute="ticketForm">
    <form:label path="subject">Book Name</form:label><br/>
    <form:input type="text" path="subject"/><br/><br/>
    <form:label path="body">Book Author</form:label><br/>
    <form:input type="text" path="body"/><br/><br/>
    <form:label path="price">Price</form:label><br/>
    <form:input type="text" path="price"/><br/><br/>
    <form:label path="description">Book Description</form:label><br/>
    <form:textarea path="description" rows="5" cols="30"/><br/><br/>
    <form:label path="availability">Availability</form:label><br/>
    <form:input type="text" path="availability"/><br/><br/>
    <b>Add more images</b><br />
    <input type="file" name="attachments" multiple="multiple"/><br/><br/>
    <input type="submit" value="Save"/><br/><br/>
</form:form>
<a href="<c:url value="/ticket" />">Return to book list</a>
</body>
</html>
