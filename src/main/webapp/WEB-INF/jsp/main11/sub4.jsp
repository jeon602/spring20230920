<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-25
  Time: 오후 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty param.age}">

<%--요청 파라미터 age --%>
<%--age가 20보다 크거나 같으면--%>
<c:if test="${param.age>= 20}" var="overTwenty">
    <p>투표 가능합니다.</p>
</c:if>
<%--그렇지 않으면--%>
<%--<c:if test="${param.age < 20}" var="overTwenty">--%>
<c:if test="${not overTwenty}">
    <p>투표 불가능합니다.</p>
    </c:if>
</c:if>
<c:if test="${empty param.age}"></c:if>
</body>
</html>
