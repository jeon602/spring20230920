<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-10-11
  Time: 오전 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Title</title>
    <style>
        body{
            background-color: antiquewhite;
        }
    </style>
</head>
<body>
        <h6>배송업체 정보 변경</h6>
        <form action="" method="post">
            <div>번호
                <input type="number" name="id">
            </div>

            <div>이름
                <input type="text" name="name">
            </div>

            <div>전화번호
                <input type="text" name="phone">
            </div>

            <div>
                <button>수정</button>
            </div>
</form>
</body>
</html>
