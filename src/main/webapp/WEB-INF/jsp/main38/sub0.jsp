<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-10-24
  Time: 오후 4:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
</head>
<body>
<div><button onclick="ajax1()">button1</button>
    <script>
        function ajax1(){
            axios.get("/main38/sub1");
        }
    </script>
</div>
<div><button onclick="ajax2()">button2</button>
    <script>
        function ajax2(){
            axios.get("/main38/sub2")
                .then(function (response){
                    console.log("응답받은 후 해야 하는 일");
                    console.log(response.data);
                    console.log(response.status);
                    console.log(response.statusText);
                    console.log(response.headers);
                                       //data와 status에
                //     데이터는 서버로부터 응답 받은 내용.
                //     hello world 기

                });
        }
    </script>
</div>
<div>
    <buttom onclick="ajax3()">button3</buttom>
    <script>function ajax3(){
        axios.get("/main38/sub3")
            .then(function (res){

                console.log(res.data); //파싱되어 들어간다
                console.log(res.data.age)
                console.log(res.data.name);
                // 콘솔에 출력한건 자바스크립트 오브젝트 제이슨을 자바스크립트 로 파싱했기 때문
            })
    }</script>
</div>

<div>
    <button onclick="ajax4()"> button4
        <script>
            function ajax4(){
                axios.get("main38/sub4")
                    .then(function (xyl){
                        /*응답된 json데이터를 자바스크립트 object로 */
                        console.log(xyl.data);
                        console.log(xyl.data.city);
                        console.log(xyl.data.price);
                        console.log(xyl.data.list[0]);
                        console.log(xyl.data.birth);
                    })
            }
        </script>
    </button>
</div>


<div>
    <input type="text" id="input1" value="5">
    <button onclick="ajax5()">button5</button>

    <script>
        function ajax5(){
            axios.get("/main38/sub5?id=" + pid)
                .then(function (reponse){
                    const  product = response.data;
                    console.log(product.productID);
                    console.log(product.productName);
                    console.log(product.Unit);
                    console.log(product.price);
                })
        }
    </script>



</div>
</body>
</html>
