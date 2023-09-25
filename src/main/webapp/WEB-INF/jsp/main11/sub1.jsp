<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-25
  Time: 오전 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>implicit el objects</h1>
<p>${pageScope}</p>
<%--이미 정해놓은 객체를 찾아냄--%>
<p>${param}</p>
<p>${header}</p>

<hr>
<h1>param el 객체</h1>
<p>request parameter이다</p>
<p>쿼리스트링과 함께 언급. sub?name=son~~~~ =기준으로 request parameter </p>
<p>\${param.name} : ${param.name}</p>
<p>\${param.age} : ${param.age}</p>
<p>\${param.email} : ${param.email}</p>
</body>
</html>
