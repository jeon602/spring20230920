<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-26
  Time: 오후 2:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>암호 전송</h3>
<%--<form action="/main14/sub1">--%>
<%--    <div>--%>
<%--        id:--%>
<%--        <input type="text" name="id">--%>
<%--    </div>--%>
<%--    <div>--%>
<%--        password:--%>
<%--        <input type="text" name="password">--%>
<%--    </div>--%>
<%--    <button>전송</button>--%>
<%--    <br>--%>

<form action="/main14/sub2" method="get">
    <div>
        id:
        <input type="text" name="id">
    </div>
    <div>
        password:
        <input type="text" name="password">
    </div>
    <button>전송</button>
</form>
>
<%--    get방식은 주소에 쿼리 스트링으로 붙어서 전송되며, 브라우저 주소란애서 볼 수 있고,
길이의 제한이 있다.

-post방식은
1.요청 본문에 붙어서 전송된다 주소에는 ㄴㄴ)
1.브라우저 주소란에서 볼 수 없으며, 길이의 제한이 없다.

예를 들어 네이버 -검색: 추석- > get방식? post방식?? --공유했을 때 같은 내용을 볼때.
post는 예로 여행바우처 사용할 때 처럼 아이디와 패스워드가 필요
post_--%>
<hr>
<h3>post</h3>
<form action="/main14/sub2" method="post">
    <div>
        id:
        <input type="text" name="id">
    </div>
    <div>
        password:
        <input type="text" name="password">
    </div>
    <button>전송</button>
</form>
<h2>title과content</h2>
<form action="/main14/sub4" method="post">
    <div>
        title:
        <input type="text" name="title">
    </div>
    <div>
        content:
        <input type="text" name="content">
    </div>
    <button>클릭!</button>

</form>
</body>
</html>
