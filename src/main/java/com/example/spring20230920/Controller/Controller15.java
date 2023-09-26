package com.example.spring20230920.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main15")
public class Controller15 {
    @GetMapping("sub1")
    public void method1(){
        }//첫 응답은 response headers다 (어디서?F12: 네트워크 창)
}
