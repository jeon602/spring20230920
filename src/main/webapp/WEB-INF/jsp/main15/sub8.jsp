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
<h3>선택한 음식</h3>
<%--<form action="/main15/sub9">--%>
<%--    좋아하는 음식은 ${foods}입니다--%>
<ul><c:forEach><li>${food}</li></c:forEach></ul>
    <a href="/main15/sub9">다른 페이지에서 보기</a>
<%--</form>--%>
</body>
</html>
