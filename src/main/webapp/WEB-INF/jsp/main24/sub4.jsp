<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-10-10
  Time: 오후 3:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main24/sub4" method="post">
  <div>
    <input type="text" name="firstName" value="김">
  </div>
  <div>
    <input type="text" name="birthDate" value="2002-02-02">
  </div>
  <div>
    <input type="text" name="photo" value="사진">
  </div>
  <div>
    <textarea name="notes" id="" cols="30" rows="10"></textarea>
  </div>
  <div>
    <input type="submit" value="등록">
  </div>
</form>
</body>
</html>
