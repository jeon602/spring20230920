package com.example.spring20230920.Controller;

import org.eclipse.tags.shaded.org.apache.regexp.RE;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("main14")
public class Controller14 {
    @RequestMapping({"sub1","sub3"})
    public void method1(){

    }  @RequestMapping(value = "sub2",method = RequestMethod.GET)
    public void method2(@RequestParam("id") String id,
                        @RequestParam("password") String password){
        System.out.println("Controller14.method2");

        System.out.println("id" + id);
        System.out.println("password" + password);
    }
    @RequestMapping(value = "sub3",method = RequestMethod.POST)
    public void method3(@RequestParam("id") String id,
                        @RequestParam("password") String password){
        System.out.println("Controller14.method3");
        System.out.println("password" + password);
    }
//    @RequestMapping(value = "sub4",method = RequestMethod.POST) + 아래 코드와 동일하다
    @PostMapping("sub4")
    public void method4(
            String title,
            String content
    ){
        System.out.println("title" + title);
        System.out.println("content" + content);
    }




    //아래의 requestmapping@을 줄여서 작성하고 sub5.jsp에 적절한 form요소 코드 작성. 전송하면 method6이 실행되도록하기
//    @RequestMapping(value = "sub5", method=RequestMethod.GET)
    @GetMapping("sub5")
    public void method5(){

    }
//    @RequestMapping(value = "sub6", method=RequestMethod.POST)
    @PostMapping("sub6")
    public void method6(
            String username,
//                        @RequestParam("password") Integer password){
            String password
    ){
        System.out.println("username" + username);
        System.out.println("password" + password);}
}
//requset mapping annotation에 작성가능한 element - value- path(특정경로 )+ method
