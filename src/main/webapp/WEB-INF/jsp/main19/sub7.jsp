<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-10-04
  Time: 오후 4:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>PRODUCT INFORMATION</title>
</head>
<body>
<h3>PRODUCT INFORMATION</h3>
<tr>
    <th>ID</th>
    <th>NAME</th>
    <th>UNIT</th>
    <th>PRICE</th>
</tr>
<<c:forEach items="${productList}" var="product">
    <tr>
        <th>${productList.id}</th>
        <th>${productList.name}</th>
        <th>${productList.unit}</th>
        <th>${productList.price}</th>
    </tr>
</c:forEach>
</body>
</html>
