<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-10-19
  Time: 오후 4:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
            <h3>고객 조회</h3>
            <form action="/main31/sub5">
                <select name="" multiple>
                    <option value="1">City</option>
                    <option value="2">Country</option>
                </select>
                도시
                <select name="city" multiple>

                    <option value="berlin">berlin</option>
                    <option value="london">london</option>
                </select>

                국가
                <select name="Country" id="">
                    <option value="germany">germany</option>
                    <option value="sweden">sweden</option>
                </select>
                <button>조회</button>


                <hr>
                <table>
                    <tr>
                        <td>이름</td>
                        <td>도시</td>
                        <td>국가</td>
                    </tr>
                    <c:forEach items="${customerList}" var="customer">
                        <tr>
                            <td>${customer.name}</td>
                            <td>${customer.city}</td>
                            <td>${customer.country}</td>
                        </tr>
                    </c:forEach>
                </table>
            </form>
</body>
</html>
