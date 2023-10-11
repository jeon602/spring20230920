<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-10-05
  Time: 오후 4:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4>국가로 공급자 조회 </h4>
<button>조회</button>
<button type="button" id="addButton"> + </button>
<br>
<form action="/main20/sub10" id="form1">
<%--    select.select1[name=country]--%>
    <select name="country" class="select1">
        <c:forEach items="${countryList}" var="countryList"></c:forEach>
    </select>
    <script>document.querySelector("#addButton").addEventListener("click",function (){
        const selectElem = document.querySelector(".select1");
        const copyElem= selectElem.cloneNode(true);

        selectElem.before(copyElem);
        copyElem.append(document.createElement("br"));
    })
    </script>
</form>
</body>
</html>
