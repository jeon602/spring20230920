package com.example.spring20230920.Controller;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("main15")
public class Controller15 {
    @GetMapping("sub1")
    public void method1() {
    }//첫 응답은 response headers다 (어디서?F12: 네트워크 창)

    @GetMapping("sub2")
    public void method2(HttpServletRequest request, HttpSession session) {
        //요청 정보를 더 자세히 알기 위해 (HttpServletRequest request
//        HttpSession session에 정보를 넣고, 또는 꺼내서 사용할 수 있으며, 같은 요청이라면 (로그인 유지. 사용자 이력을 저장하는 등,,,)
//          데이터를 저장할 때 controllrt- view - model에서 저장데이터를 꺼냈는데  모델 attribute

//        같은 브라우저에서 요청session에 저장하는 데이터도 session attribute

        System.out.println();
        System.out.println("request =" + request.getRemoteHost());
        System.out.println("session = " + session.getId());
        System.out.println();
    }

    @GetMapping("sub3")
    public void method3(
            @RequestParam(value = ("name"), defaultValue = "")
            String name,
            HttpSession session,
            HttpServletRequest request)
    {
        if (!name.isBlank()) {
            session.setAttribute("username", name);
        }
        Object username = session.getAttribute("username");

        if (username != null) {
            System.out.println();
            System.out.println("request = " + request.getRemoteHost());
            System.out.println();
        }
    }
    @GetMapping("sub4")
    public void method4(){

    }
    @PostMapping("sub5")
    public void method5(String name, HttpSession session){session.setAttribute("username",name);}
    @GetMapping("sub6")
    public void method6(String foods,HttpSession session){session.setAttribute("foods",foods);

    }
    @GetMapping("sub7")
    public void method7(){}

//post요청 /main15/sub8
//request parameter foods를 넣고
//    session에 attribute로 넣고
//    sub8.jsp 로 forward 하는 메소드 만들기
//    단 sub8 sub9에서는 sub7에서 선탹한 음식 보여주기3
    @GetMapping("sub8")
    public void method8(@RequestParam("foods") List<String> foods, HttpSession session){
        System.out.println("foods =" + foods);
        session.setAttribute("foodList", foods);
    }
    @GetMapping("sub9")
    public void method9(){}
    @GetMapping("sub10")
    public void method10(Model model, HttpSession session){
        model.addAttribute("modelAttr1","마라탕");

        model.addAttribute("attr1","돈가스");
        session.setAttribute("attr1","커피");
    }

    @GetMapping("sub11")
    public void method11(Model model,HttpSession session){
        model.addAttribute("items",List.of("두식", "봉석"));
        session.setAttribute("items",List.of("피자","햄버거","돈가스"));
//        sub11.jsp에서 두식, 봉석 출력, 피자, 햄버거 돈가스 출력
    }
}
