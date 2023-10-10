<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-10-10
  Time: 오후 3:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h5></h5>
<form action="/main24/sub2" method="post">
<%--    div*8>input[name]--%>
    <div>
        공급자명
        <input type="text" name="supplierName">
    </div>

    <div>
        계약명
        <input type="text" name="contactname">
    </div>

    <div>
        주소
        <input type="text" name="address">
    </div>

    <div>
        <input type="text" name="city">
    </div>

    <div>
        국가
        <input type="text" name="Country">
    </div>

    <div>
        전화번호
        <input type="text" name="phone">
    </div>

    <div>
        우편번호
        <input type="text" name="postalCode">
    </div>

    <div>
        <input type="text" name="등록">
    </div>
<%--    길이의 제한이 음.    method post로 --%>
</form>
</body>
</html>
