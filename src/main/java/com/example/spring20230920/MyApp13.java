package com.example.spring20230920;

import jakarta.annotation.PostConstruct;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PostMapping;

@SpringBootApplication
public class MyApp13 {
    public static void main(String[] args) {
        ApplicationContext context = SpringApplication.run(MyApp13.class, args);


    }
}
@Component
class MyClass26{
    @PostConstruct //DI 완료후 바로 실행
    public void method1(){
        System.out.println("MyClass26.method1");
    }
}
//내가만든 클래스가 아니라면, @어노테이션붙이기 어렵다
