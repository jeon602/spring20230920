package com.example.spring20230920.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main8")
public class Controller08 {
    @RequestMapping("sub1")
    public void method1(Model model) {
        model.addAttribute("attr1", "value1");
        model.addAttribute("attr2", "value2");
//포워드 하기 전에 모델에 attribute가 2개 더해진 상태
        // forward to /WEB-INF/jsp/main8/sub1.jsp
        
    }

    @RequestMapping("sub2")
    public void method(Model model){
        model.addAttribute("propone","✨");
        model.addAttribute("proptwo","🙌");
        
    }
    
}
