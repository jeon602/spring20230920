package com.example.spring20230920.Controller;


import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main16")
public class Controller16 {
    @Autowired
    private ServletContext application;

    @GetMapping("sub1")
    public void method1(Model model, HttpSession session) {
        model.addAttribute("modelAttr1", "추석");
        session.setAttribute("sessionAttr1", "강강술래");
        application.setAttribute("appAttr1", "보름달");
    }

    @GetMapping("sub2")
    public void method2(HttpSession session) {
        Object count = session.getAttribute("count");
        if (count == null) {
            session.setAttribute("count", 0);

        } else {
            Integer countInt = (Integer) count;
            session.setAttribute("count", countInt++);
        }

        Object appCount = application.getAttribute("count");
        if (appCount == null) {
            application.setAttribute("count", 0);
        } else {
            Integer countInt = (Integer) appCount;
            countInt++;
            application.setAttribute("count", countInt);
        }
    }

    @GetMapping("sub3")
    public void method3(Model model, HttpSession session) {
        model.addAttribute("modelAttr1", "보름달");
        session.setAttribute("sessionAttr1", "송편");

        System.out.println("Controller16.method3");
        System.out.println("System.identityHashCode(model) = " + System.identityHashCode(model));
        System.out.println("System.identityHashCode(session) = " + System.identityHashCode(session));
    }

    @GetMapping("sub4")
    public void method4(Model model, HttpSession session) {

        Object modelAttr1 = model.getAttribute("modelAttr1");
        Object sessionAttr1 =session.getAttribute("sessionAttr1");

        System.out.println("modelAttr1 = "+modelAttr1);
        System.out.println("sessionAttr1 =" + sessionAttr1);

        System.out.println("Controller16.method4");
        System.out.println("System.identityHashCode(model) = " + System.identityHashCode(model));
        System.out.println("System.identityHashCode(session) = " + System.identityHashCode(session));
    }
    @GetMapping("sub5")
    public String method5(){
        return "/main16/sub5"; //view name
    }
    @GetMapping("sub6")
    public String method6(){
//        redirection
//        다른 곳(location)으로 가!!라는 응답 (response중에서 3XX번대 302번)
//main/sub6을 찾았는데 sub5로 돌아옴. sub6으로 요청했는데, 네트워크 창의 요청 메세지를 보면 get으로 잘 감.
//        첫번째 요청에 대한 응답은 302번 location 헤더를 보니 main/sub5로 두번째 응답이 감.
//        path
        return "redirect:/main16/sub5";
    }
    @GetMapping("sub7")
    public String method7(){
        //
        return "redirect:http://www.naver.com";
    }

}
