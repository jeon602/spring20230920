<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-27
  Time: 오전 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>body{background: aliceblue}</style>
</head>
<body>
<h2>좋아하는 음식 고르기</h2>
<form action="/main15/sub8" method="post">
<%--    div*5>label[for=input$]+input:c#input$[name=foods][value]--%>
    <div>
        <label for="input1">pizza🍕</label>
        <input type="checkbox" name="foods" id="input1" value="pizza">
    </div>
    <div>
        <label for="input2">donut🥯</label>
        <input type="checkbox" name="foods" id="input2" value="donut">
    </div>
    <div>
        <label for="input3">tanghuru🍡</label>
        <input type="checkbox" name="foods" id="input3" value="tanghuru">
    </div>
    <div>
        <label for="input4">kimbab</label>
        <input type="checkbox" name="foods" id="input4" value="kimbab">
    </div>
    <div>
        <label for="input5">bibibab</label>
        <input type="checkbox" name="foods" id="input5" value="bibibab">
    </div>
    <button>입력</button>
</form>
</body>
</html>
