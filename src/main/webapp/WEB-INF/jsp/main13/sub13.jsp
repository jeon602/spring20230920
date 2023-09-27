<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-26
  Time: 오후 2:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>select 요소</h1>
<form action="/main13/sub13">
    <%--    select>option[value]*3--%>
    <div>
        <select name="hobby" sid="">
            <option value="soccer">축구</option>
            <option value="baseball">야구</option>
            <option value="basketball">농구</option>
        </select>
    </div>
    <div>
<%--        select[name=food][multiple]>option[value]*5--%>
    <select name="food" id="" multiple="">
        <option value="pizza">피자</option>
        <option value="coffee">커피</option>
        <option value="burger">햄버거</option>
        <option value="milk">우유</option>
        <option value="tanghuru">탕후루</option>
    </select>
<%--        컨트롤 로 여러개 선택가능--%>
    </div>
</form>
</body>
</html>
