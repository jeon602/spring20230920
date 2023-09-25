<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-25
  Time: 오전 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>비교연산자</h3>
<p> <, >, <=, =>, ==, =! </p>
<p> lt,gt,le, ge, eq, ne </p>
<h4> < </h4>
<p>${a} < ${b} = ${a < b}</p>
<h4> > </h4>
<p>${a} > ${b} = ${a > b}</p>
<h4> <= </h4>
<p>${a} <= ${b} = ${a <= b}</p>
<h4> >= </h4>
<p>${a} >= ${b} = ${a >= b}</p>
<h4> == </h4>
<p>${a} == ${b} = ${a == b}</p>
<h4> != </h4>
<p>${a} != ${b} = ${a != b}</p>
<p>${a} < ${b} = ${a < b}</p>
<p>${a} lt ${b} = ${a lt b}</p>
<p>${a} gt ${b} = ${a gt b}</p>
<p>${a} le ${b} = ${a le b}</p>
<p>${a} ge ${b} = ${a ge b}</p>
<p>${a} eq ${b} = ${a eq b}</p>
<p>${a} ne ${b} = ${a ne b}</p>

<hr>
<p>${c>d}</p>
<p>${c<d}</p>
<p>${c>=d}</p>
<p>${c<=d}</p>
<p>${c==d}</p>
<p>${c!=d}</p>


<hr>
<p>${e > f}</p>
<p>${e > g}</p>
<%--다른 타입은 수로 인식--%>
<%--결과는 false    true--%>

<%--결론: 타입을 맞춰서 입력해라.--%>


<hr>
<h3>el 논리연산자</h3>
<h4>&& (and), || (or)</h4>
<h4>&& (and)</h4>
<p>\${true && true}:${true && true}</p>
<p>${true && false}</p>
<p>${false && true}</p>
<p>${false && false}</p>
<p>${false and false}</p>
<p>${false and false}</p>
<p>${false and false}</p>
<p>${false and false}</p>

<h4>|| (or)</h4>
<%--||는 파이프라고 함 --%>
<p>\${true || true} : ${true ||true}}</p>
<p>\${true || false} : ${true ||false}}</p>
<p>\${false || true} : ${false ||true}}</p>
<p>\${false || false} : ${false} ||false}}</p>
<p>\${true or true} : ${true or true}}</p>
<p>\${false or false} : ${true or true}}</p>
<p>\${true or true} : ${true or true}}</p>
<p>\${false or false} : ${true or true}}</p>


</body>
</html>
