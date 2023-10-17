package com.example.spring20230920;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;

import java.util.Objects;

@SpringBootApplication
public class MyApp12 {
    public static void main(String[] args){
        ApplicationContext context = SpringApplication.run(MyApp12.class, args);
        Object bean = context.getBean("MyClass25");
        Object bean1 = context.getBean("MyClass24");
        Object bean2 = context.getBean("MyClass23");


        MyClass25 o1 = (MyClass25) bean;

        System.out.println(bean1.hashCode()); // int값 출력
        System.out.println(bean2.hashCode()); //int값 출력(1)
        System.out.println(o1.getField().hashCode()); //int값 출력(1)
//         1끼리는 같은 값이 출력되도록

    }
}
interface MyInterface3{
    public void  method4();}
class MyClass23 implements MyInterface3{
    public void method4(){}
}
class MyClass24 implements MyInterface3{
    public void method4(){}
}

@Component
class MyClass25 {
    private MyInterface3 field;

    //    생성자 주입
    public void method25(@Qualifier("myClass23") MyInterface3 field) {
        this.field = field;
    }

    public MyInterface3 getField() {
        return field;
    }
}
