package com.example.spring20230920.Controller;

import com.example.spring20230920.dao.MyDao8;
import com.example.spring20230920.domain.MyDto33Employee;
import com.example.spring20230920.domain.MyDto45;
import com.example.spring20230920.service.MyService1;
import com.example.spring20230920.service.MyService2;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import software.amazon.awssdk.core.Response;

@Controller
@RequiredArgsConstructor
@RequestMapping("main39")
public class Controller39 {
    private final MyDao8 dao;
    private final MyService2 service;

    {
        ResponseEntity.badRequest().build();
    }



    @GetMapping("sub0")
    public void method0() {

    }
    //response entity의 메소드는 ::: api참고 자주 쓰는 응답 코드 : accept200 bad request 400- Internal

    @GetMapping("sub1")
    public ResponseEntity method1() {
        //spring framework api - responseEntity<>응답코드와 응답 본문이 가능한 객체
//        httpentity 응답
//        responseEntity가 가진 코드는 status. ..본문 : of ()메소드와 /status 메소드
//        body method 와 b
        return ResponseEntity.status(200).build();
        //200
    }

    @GetMapping("sub2")
    public ResponseEntity method2() {
        return ResponseEntity.internalServerError().build();
    }

    @GetMapping("sub3")
    public ResponseEntity method3() {
        return ResponseEntity.internalServerError().build();
    }

    @GetMapping("sub4")
    public ResponseEntity<MyDto45> method4(Integer id) {
        MyDto45 data = dao.selectByProductId(id);
//     return ResponseEntity.status(200).body(data);
//    return ResponseEntity.ok().body()
//return ResponseEntity.ok(data);
        if (data == null) {
            return ResponseEntity.notFound().build();
        } else {
            return ResponseEntity.ok(data);
        }

    }

    @GetMapping("sub5")
    public ResponseEntity method5() {
        if (Math.random() > 0.5) {
            return ResponseEntity.ok().build();
        } else {
            return ResponseEntity.internalServerError().build();
        }
    }

    @PostMapping("sub6")
    public ResponseEntity method6(@RequestBody MyDto33Employee dto) {
        if (service.validate(dto)) {
            int rows = service.add(dto);
            if (rows == 1) {
                return ResponseEntity.ok().build();
            } else {
                return ResponseEntity.internalServerError().build();
            }
        } else {
            return ResponseEntity.badRequest().build();
        }
    }


}