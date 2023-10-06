<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-10-06
  Time: 오후 3:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table{border: 2px solid black;}
        .active {
            background-color: darkblue;
            color: #eeeeee;
        }
    </style>
</head>
<body>
<h3>2025-02-20 상담 예약 고객 리스트</h3>
<table style="color: cornflowerblue;">
    <tr>
        <th>ID</th>
        <th>NAME</th>
    </tr>

    <c:forEach items="${customerList}" var="customer">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
        </tr>
    </c:forEach>
</table>
<div>
    <c:forEach begin="${leftPageNumber}" end="${rightPageNumber}" var="pageNumber"></c:forEach>
    <a href="/main22/sub3?p=${prePageNumber}">PRE</a>
       <c:forEach begin="${leftPageNumber}"   end="${rightPageNumber}" var="pageNumber">
        <a
                <c:if test="${pageNumber == currentPage}">
                    class="active"
                </c:if>
                href="/main22/sub3?p=${pageNumber}">${pageNumber}</a>
        |


       </c:forEach>
    <a href="/main22/sub3?p=${nextPageNumber}">NEXT</a>
</div>

</body>
</html>
