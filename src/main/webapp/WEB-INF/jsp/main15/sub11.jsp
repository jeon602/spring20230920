<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-27
  Time: 오전 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>\${items} : ${items}</h1>

<c:form items="${sessionScope.items}" var="item">
    <li>
        ${item}
    </li>
</c:form>
</body>
</html>
