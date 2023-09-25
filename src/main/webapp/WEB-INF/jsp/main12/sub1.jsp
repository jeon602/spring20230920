<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-09-25
  Time: 오후 3:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h3>상대경로 .. 은 한 path 위</h3>
<form action="..">
    <input type="text" name="age">
    <button>전송</button>
</form>

<form action="../..">
    <button>전송</button>
</form>

<form action="../dsub3">
    <button>전송</button>

</form>
<form action="../../csub3/../bsub3">
    <button>전송</button>
</form>

<form action="../../csub3">
    <button>전송</button>
</form>
<%--http://localhost:8080/main12/asub2/bsub2/csub2/dsub2/esub2--%>
<%--http://localhost:8080/main12/asub2/bsub2/bsub3?--%>
<form action="../../csub3/../bsub3">
    <button>전송</button>
</form>




</body>
</html>



<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: admin--%>
<%--  Date: 2023-09-25--%>
<%--  Time: 오후 2:36--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="jakarta.tags.core" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<h1>form 요소</h1>--%>

<%--<form>--%>
<%--    <input type="text" name="param1">--%>
<%--    <br>--%>
<%--    <input type="text" name="param2">--%>
<%--    <br>--%>
<%--    &lt;%&ndash; select(option), textarea &ndash;%&gt;--%>
<%--    <button>전송</button>--%>
<%--</form>--%>

<%--<hr>--%>

<%--<form>--%>
<%--    &lt;%&ndash;--%>
<%--    전송버튼 클릭시--%>
<%--    ?name=lee&age=44&address=seoul&email=abc@gmail.com--%>
<%--    &ndash;%&gt;--%>
<%--    &lt;%&ndash;(input[name]+br)*4&ndash;%&gt;--%>
<%--    <input type="text" name="name">--%>
<%--    <br>--%>
<%--    <input type="text" name="age">--%>
<%--    <br>--%>
<%--    <input type="text" name="address">--%>
<%--    <br>--%>
<%--    <input type="text" name="email">--%>
<%--    &lt;%&ndash;                                        안쓰면 안된다.&ndash;%&gt;--%>
<%--    <br>--%>
<%--    <button>전송</button>--%>
<%--</form>--%>
<%--<hr>--%>
<%--<form type="text" name="quary">--%>
<%--    <br>--%>
<%--    <button>전송</button>--%>
<%--</form>--%>


<%--<hr>--%>
<%--<h3>action :속성 : request 파라미터 어디로 보낼지 결정</h3>--%>
<%--<form action="https://search.naver.com/search.naver">--%>
<%--    <input type="text" name="quary">--%>
<%--    <br>--%>
<%--    <button>Naver search</button>--%>
<%--</form>--%>
<%--</hr>--%>
<%--<form action="https://www.google.com/search">--%>
<%--    <input type="text" name="q">--%>
<%--    <br>--%>
<%--    <button>Google search</button>--%>
<%--</form>--%>
<%--<form action="https://search.daum.net/search">--%>
<%--    <input type="text" name="q">--%>
<%--    <br>--%>
<%--    <button>Daum search</button>--%>
<%--    <p>action attribute 속성 값이 빈 문자일 경우 현재경로로 </p>--%>
<%--    &lt;%&ndash;    name: &ndash;%&gt;--%>
<%--</form>--%>
<%--&lt;%&ndash;전송 버튼 클릭 하면 request parameter가 /main12/sub2로 전송되도록 입력하시오 &ndash;%&gt;--%>
<%--<form action="/main12/sub2">--%>
<%--    <input type="text" name="age">--%>
<%--    <button>전송</button>--%>
<%--</form>--%>

<%--<h1> path에서 마지막/(슬래쉬를 기준으로 )</h1>--%>
<%--<h1> path가 마지막</h1>--%>
<%--<form action="/main12/sub2">--%>
<%--    <input type="text" name="email">--%>
<%--    <button>전송</button>--%>
<%--</form>--%>
<%--<form action="sub3">--%>
<%--    <input type="text" name="">--%>
<%--</form>--%>
<%--&lt;%&ndash;슬래쉬로 시작하면 상대경로 &ndash;%&gt;--%>
<%--&lt;%&ndash;상대경로에서 (절대도 가능하지만) .. : 한 경로 위 &ndash;%&gt;--%>
<%--<form action="..">--%>
<%--              <input type=text" name="age">--%>
<%--    <button>전송</button>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>