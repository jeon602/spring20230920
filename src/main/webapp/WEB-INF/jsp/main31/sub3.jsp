<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-10-19
  Time: 오후 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Title</title>
    <style>
        *{text-align: center;
        }
        button{

        }
    </style>
</head>
<body>
<h5>고객 조회</h5>
<form action="/main31/sub3">
    <select name="code" id="">
        <option value="1">CustomerName</option>
        <option value="2">ContectName</option>
    </select>
    <input type="text" name="k" placeholder="검색어를 입력하세요.">
    <button>조회</button>
</form>

<hr>
<style>
    table,tr,td {
        border-collapse: collapse;
        border: 1px solid black;
}

</style>

<table>
    <tr>
        <td>CustomerName</td>
        <td>ContectName</td>
    </tr></table>
<c:forEach items="${names}" var="name">
    <tr>
        <td>${name.customerName}</td>
        <hr>
        <td>${name.contectName}</td>
    </tr>
</c:forEach>
<hr>

</body>
</html>
<%--< 모양은 태그의 시작부분을 알리는 것.--%>