package com.example.spring20230920.Controller;

import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import software.amazon.awssdk.core.Response;

@Controller
@RequiredArgsConstructor
@RequestMapping("main39")
public class Controller39 {
    @GetMapping("sub0")
    public void method0(){

    }
    @GetMapping("sub1")
    public ResponseEntity method1(){
        //spring framework api - responseEntity<>응답코드와 응답 본문이 가능한 객체
//        httpentity 응답
//        responseEntity가 가진 코드는 status. ..본문 : of ()메소드와 /status 메소드
//        body method 와 b
        return ResponseEntity.status(200).build();
        //200
    }
    @GetMapping("sub2")
    public ResponseEntity method2(){
        return ResponseEntity.notFound().build();
    }
    //response entity의 메소드는 ::: api참고 자주 쓰는 응답 코드 : accept200 bad request 400- Internal


}
