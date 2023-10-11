<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-25
  Time: 오전 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h2>empty</h2>
<p>값이 없거나(null), 빈 문자열, 사이즈가 0인 collection이면 true </p>
<p>\${empty a} :${empty a} </p>
<p>\${empty b} :${empty b}</p>
<p>\${empty c}:${empty c}</p>
<p>\${empty d}:${empty d}</p>
<p>\${empty e}:${empty e}</p>
<p>\${empty f}:${empty f}</p>
<p>\${empty g}:${empty g}</p>
<%--값이 있는지 없는지 확인하고 싶을 때 empty를 사용한다 --%>
<%--empty
값이 없거나(null), 빈 문자열, 사이즈가 0인 collection이면 true

${empty a} :false

${empty b} :true

${empty c}:false

${empty d}:true

${empty e}:false

${empty f}:true

${empty g}:true--%>
</body>
</html>
