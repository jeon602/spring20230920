package com.example.spring20230920.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//Title : requestmapping
@Controller

public class Controller01 {
    @RequestMapping("/")
    public void method1(){
        System.out.println("Controller01.method1");
    }
@RequestMapping("/path1")
    public void method2() {
        System.out.println("Controller01.method2");
    }

    @RequestMapping("/path2")
    public void method3(){
        System.out.println("Controller01.method3");
    }
    @RequestMapping("/path4")
    public void metod4(){
        System.out.println("Controller01.method4");
        System.out.println("네번째 메소드");
    }
    @RequestMapping("path5")
    public void method5(){
        System.out.println("Controller01.method5");
    }
}
