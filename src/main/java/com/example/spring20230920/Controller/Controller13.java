package com.example.spring20230920.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Controller
@RequestMapping("main13")
public class Controller13 {
    @RequestMapping("sub1")
    public void method1() {
    }

    @RequestMapping("sub2")
    public void method2() {
    }

    @RequestMapping("sub3")
    public void method3(@RequestParam("param1") String param1,
                        @RequestParam("param2") Integer param2,
                        @RequestParam("param3") String param3,
                        @RequestParam("param4") LocalDate param4,
                        @RequestParam("param5") LocalDateTime param5,
                        @RequestParam("param6") String param6
    ) {//integer와 string 둘 다 가능하지만 보통 상식) 같은 타입으로 맞추어준다.
        System.out.println("param1" + param1);
        System.out.println("param2" + param2);
        System.out.println("param3" + param3);
        System.out.println("param4" + param4); //날짜를 출력하나, 문자열이 넘어가는 것.
        System.out.println("param5" + param5); //datetime-local

        System.out.println("param6" + param6);
    //우리는 문자열을 자바 안에서 변환시켜 사용할 가능성이 높음. 자바는 날짜는  local date type으로 사용하면 된다. string 대신에
    }

    @RequestMapping("sub4")
    public void method4() {
    }

    @RequestMapping("sub5")
    public void method5() {
    }

    @RequestMapping("sub6")
    public void method6() {
    }
}
