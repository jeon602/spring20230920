package com.example.spring20230920;

import org.springframework.stereotype.Controller;
import org.springframework.web.context.annotation.ApplicationScope;


public class MyApp1 {
    public static void main(String[] args){
        System.out.println("code.......");

        MyClass1 o1 = new MyClass1(); //객체만들고 실행하는 걸 스프링에 맡기면,,, --> myapp2로 이동
        o1.method1();

    }
}
class MyClass1{
    public void method1(){
        System.out.println("MyClass.method1");
    }
}