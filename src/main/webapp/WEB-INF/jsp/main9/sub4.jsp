<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-22
  Time: 오전 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h3>${myMap}</h3>
  <h3>${myMap["son"]}</h3>
  <h3>${myMap["kim"]}</h3>
<%--  아래를 더 많이 사용.--%>
  <h3>${myMap.son}</h3>
  <h3>${myMap.lee}</h3>
  <h3>${myMap.kim}</h3>

  <hr>
  <h3>${cityMap.seoul}</h3>
  <h3>${cityMap.busan}</h3>
<%--  <h3>${cityMap.red}</h3>--%>
<%--  <h3>${cityMap.blue}</h3>--%>
<%--  <h3>${cityMap.black}</h3>--%>

  <hr>
  <h3>${phones.phone1}</h3>
  <h3>${[phones.phone2}</h3>
  <h3>${caps.korea}</h3>
  <h3>${map2.us}</h3>
  <h3>${cityMap.black}</h3>
<%--    손은 7이라고 값을 부여했기 때문에 7로 나온다 --%>
</body>
</html>
