<%--
  Created by IntelliJ IDEA.
  User: 314-d04
  Date: 2018/02/27
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Test</title>
</head>
<body>
<ul>
    <c:forEach var="user" items="${users}">
        <li>
                ${user.id}-${user.username}
        </li>
    </c:forEach>
</ul>
</body>
</html>
