<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-27
  Time: 오전 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<form action="/main15/sub7"method="get">--%>
<h2>좋아하는 음식이 맞습니까?</h2>
<ul>
    <c:forEach items="${foodList}" var="item">
        <li>$(item)</li>
    </c:forEach>
</ul>
<a href="/main15/sub7">선호하는 음식이 아니신가요?</a>
</form>
</body>
</html>
