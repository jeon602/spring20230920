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

        Configuration1 conf = context.getBean("Configuration1", Configuration1.class);
        MyClass27 obj1 = conf.myBean1();
        MyClass27 obj2 = conf.myBean2();

        System.out.println("obj1 = " + obj1);
        System.out.println("obj2 = " + obj2);

        System.out.println(conf.myBean1());
        System.out.println(conf.myBean2());
        System.out.println(new MyClass27());
        System.out.println(new MyClass27());
//어플리케이션 내에서 어떤 클래스의 객체가((인스턴스가 하나가되도록 하는 ) == single ton pattern
//        application 안의 클래스가 객체가 메소드를 재정의함으로써 인스턴스가 하나가되도록 한다
//        configuration1의 싱글톤 패턴으로 재정의함. 재정의한 메소드를 호출한 것이므로 호출할 때마다 항상 같은 객체가 호출된다.
//재정의 . 항상 같은 객체의 출력, 어플리케이션 내에서 어떤 클래스의 instance가 하나가 되도록 함.
//        singleton pattern
    }
}
@Configuration
//내가만든 클래스라면 어노테이션으로 스프링빈을 만드는데,
//그게 아니라면, Configuration 클래스를 사용해 스프링 빈을 만든다.
class Configuration1{
    //    빈을 만드는 메소드 public  리턴 타입이 상위타입이어야 , 메소드 명
    //bean의 이름은 메소드 명과 같다.

    @Bean
    public MyClass27 myBean1(){
        return new MyClass27();
    }
    @Bean
    public MyClass27 myBean2(){
        return new MyClass27();
    }
}
//@configuration을 붙였을 때 빈의 이름이 클래스 이름을 lowerCameCase로 바꾼것,
@Configuration
class MyClass27{}



//재정의돤 메소드
//왜 재정의를 했는지 같은 객체가 나오는걸 보장하도록 메소드가 다시
