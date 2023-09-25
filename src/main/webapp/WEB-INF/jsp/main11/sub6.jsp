<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-25
  Time: 오후 12:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:choose>
    <c:when test="${param.age>= 20}">
        <p>투표 가능합니다.</p>
    </c:when>
    <c:when test="${param.age <20}">
        <p>20세 미만은 투표 불가능합니다.</p>
    </c:when>
    <c:otherwise>
        <p>age값을 입력해 주세요</p>
    </c:otherwise>
</c:choose>
</body>
</html>
