<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-22
  Time: 오후 2:04
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%--윗 코드는 모든 jsp파일에 들어가야 함--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>${person1.id}</h3>
<h3>${person1.name}</h3>
<h3>${person1.foods[0]}</h3>
<h3>${person1.foods[1]}</h3>
<h3>${person1.foods[2]}</h3>

<hr>
<h3>${person1.car[0]}</h3>
<h3>${person1.car[1]}</h3>
<h3>${person1.car[2]}</h3>

<hr>
<c:forEach items="${person1.car} var=car">
    <h3>${car}</h3>
</c:forEach>
<hr>

<c:forEach items="${person1.foods}" var="food">
    <h3>${food}</h3>
</c:forEach>


</body>

</html>
