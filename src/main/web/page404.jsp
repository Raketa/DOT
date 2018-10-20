<%@ page import="java.util.Map" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hello</title>
</head>
<body>
<h2>404, <%= request.getRemoteAddr() %>!</h2>
<%
    final Map map = request.getParameterMap();
    session.setAttribute("params", map );
%>

<c:forEach items="${params}" var="entry">
    <p><b>${entry.key}</b>
        <c:forEach items="${entry.value}" var="val">
            <i>${val}</i>
        </c:forEach>
    </p>
</c:forEach>
</body>
</html>