<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-04
  Time: 오후 3:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        body{background-color: palevioletred;}

        table {
            margin: auto;
            border-collapse: collapse;
            width: 70%;
        }
        th, td {
            border: 1px dotted black;
            background-color: white;
        }

        th {
            background-color: seashell;
        }
    </style>
</head>
<body>
<h4>상품 목록</h4>
<table>
    <tr>
        <th>번호</th>
        <th>상품명</th>
        <th>단위</th>
        <th>가격</th>
    </tr>
    <c:forEach items="${productList}" var="prod">
        <tr>
            <td>${prod.id}</td>
            <td>${prod.name}</td>
            <td>${prod.unit}</td>
            <td>${prod.price}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
