<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-25
  Time: 오전 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>jstl if tag</h1>
<c:if test="true">
    <p>출력 🍕</p>
</c:if>
c<c:if test="false">
    <p>출력 안됨.¯\_(ツ)_/¯</p>
</c:if>

<hr>
<c:if test="${param.name eq 'son'}">
    <p>hello son</p>
</c:if>


<hr>
<h3>var의 속성 : test의 연산 결과를 저장한다</h3>
<c:if test="${param.name eq 'son'}" var="isSon">
    <p>hello son</p>
</c:if>

<c:if test="${isSon}">
    <p>여전히 son</p>
</c:if>
<c:if test="${not isSon}">
    <p>son이 아님</p>
</c:if>
</body>
</html>
