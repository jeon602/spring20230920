<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-25
  Time: 오후 4:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
<p>${message}</p>
</c:if>

<a href="/main12/sub3">새로운 이름과 나이 등록하러 가기</a>

</body>
</html>
