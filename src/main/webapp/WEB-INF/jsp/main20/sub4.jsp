<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-10-05
  Time: 오전 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        body{
            /*margin: auto;*/
            text-align: center;
            background-color: seashell;
            margin-top: auto;
        }
        h4{font-size: 1rem;
            color: cornflowerblue;
        }
    </style>
</head>
<body>
<h4>상품 정보 조회 </h4>
<form action="/main20/sub4">
    <input type="text" name="PRODUCT">
        <button>조회</button>
</form>
</body>
</html>
