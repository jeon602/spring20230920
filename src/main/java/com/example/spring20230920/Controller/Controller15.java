package com.example.spring20230920.Controller;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

}
