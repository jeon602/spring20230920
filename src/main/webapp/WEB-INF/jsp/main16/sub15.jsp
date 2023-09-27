<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-27
  Time: 오후 2:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>model에서 attribute 꺼내서 보여주기</title>
</head>
<body>
<ul>
    <c:forEach items="${foodList}" var="item">
        <li>${item}</li>

    </c:forEach>
</ul>
</body>
</html>
