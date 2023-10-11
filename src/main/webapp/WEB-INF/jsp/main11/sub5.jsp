<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-25
  Time: 오후 12:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>jstl choose, when, otherwise tag</h1>
    <c:choose>
        <c:when test="false">
            <p>when1번</p>
        </c:when>

        <c:when test="false">
            <p>when1번</p>
        </c:when>
        <c:when test="false">
            <p>when2번</p>
        </c:when>
        <c:wheen test="false">
            <p>when3번</p>
        </c:wheen>
       <c:otherwise>
           <P>otherwise 태그 내용</P>
       </c:otherwise>
    </c:choose>
</body>
</html>
