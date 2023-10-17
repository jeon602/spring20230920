package com.example.spring20230920;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.Objects;

@SpringBootApplication
public class MyApp14 {
    public static void main(String[] args) {
        ApplicationContext context = SpringApplication.run(MyApp14.class, args);
        Object bean1 = context.getBean("myBean1");
        System.out.println("bean1 = " + bean1);

        Object bean2 =context.getBean("myBean2");
        System.out.println("bean2 = " + bean2);
    }
}
@Configuration
//내가만든 클래스라면 어노테이션으로 스프링빈을 만드는데,
//그게 아니라면, Configuration 클래스를 사용해 스프링 빈을 만든다.
class Configuration1{
    //    빈을 만드는 메소드 public  리턴 타입이 상위타입이어야 , 메소드 명
    //bean의 이름은 메소드 명과 같다.

    @Bean
    public MyClass27 myBeab1(){
        return new MyClass27();
    }
    @Bean
    public MyClass27 myBeab2(){
        return new MyClass27();
    }
}
//@configuration을 붙였을 때 빈의 이름이 클래스 이름을 lowerCameCase로 바꾼것,
@Configuration
class MyClass27{}
