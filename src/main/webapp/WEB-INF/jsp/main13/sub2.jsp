<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-26
  Time: 오전 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>div{
        font-size: 8px;
        text-align:left;
        background: palevioletred;
    }
    </style>
</head>
<body>
<form action="/main13/sub3">
<%--    div*10>label[for=input$]>lorem1^input[type][name=param$][id=input$]--%>
    <div>
        <label for="input1">Lorem.</label>
        <input type="text" name="param1" id="input1">
    </div>
    <div>
        <label for="input2">Rerum.</label>
        <input type="number" name="param2" id="input2">
    </div>
    <div>
        <label for="input3">Omnis?</label>
        <input type="password" name="param3" id="input3">
<%--        string으로 받는다.--%>
    </div>
    <div>
        <label for="input4">Saepe.</label>
        <input type="date" name="param4" id="input4">
    </div>
    <div>
        <label for="input5">Voluptatibus!</label>
        <input type="datetime-local" name="param5" id="input5">
    </div>
    <div>
        <label for="input6">Rerum.</label>
        <input type="radio" name="param6" value="radio value1" id="input6">
    </div>
    <div>
        <label for="input7">Rerum?</label>
        <input type="radio" name="param6" value="radio value2`"000
                id="input7">
    </div>
    <div>
        <label for="input8">Voluptate.</label>
        <input type="checkbox" name="param8" value="pizza" id="input8">
    </div>
    <div>
        <label for="input9">Quae.</label>
        <input type="checkbox" name="param8" value="melon" id="input9">
    </div>
    <div>
        <label for="input10">Rem.</label>
        <input type="checkbox" name="param8" value="coffee" id="input10">
    </div>
    <button> button</button>
</form>
</body>
</html>
