
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-23
  Time: 오후 2:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
</head>
<body>
<div>
    <button onclick="ajax1()">button1</button>
</div>
<script>
    function ajax1() {
        // https://axios-http.com/docs/req_config
        //https://axios-http.com/docs/req_config 의 내용이 아래 중괄호 안에 들어갈 수 있음.
        //url은 필수 메소드는 기본값이 존재한다 . method는 사용하지 않으면 default인지 알 수 있다

        axios.request({
            url: "/main35/sub2"
        });
    }
</script>
</body>
</html>
