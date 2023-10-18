package com.example.spring20230920.Controller;

import com.example.spring20230920.dao.MyDao3;
import com.example.spring20230920.domain.MyDto19;
import com.example.spring20230920.domain.MyDto20;
import com.example.spring20230920.domain.MyDto21;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@Controller
@RequiredArgsConstructor
@RequestMapping("main29")
public class Controller29 {

    private final MyDao3 dao3;

    @GetMapping("sub1")
    public void method1() {
        String name = dao3.select1();
        System.out.println("name = " + name);
    }

    @GetMapping("sub2")
    public void method2() {
        Double price = dao3.select2();

        System.out.println("price = " + price);
    }

    @GetMapping("sub3")
    public void method3() {
        // 1번 직원의 LastName 조회 후 출력
        String name = dao3.select3();
        System.out.println("name = " + name);
    }

    @GetMapping("sub4")
    public void method4() {
        // 2번 직원의 생일 조회 후 출력
        LocalDate birth = dao3.select4();
        System.out.println("birth = " + birth);
    }

    @GetMapping("sub5")
    public void method5() {
        List<String> countrys = dao3.select5();

        countrys.forEach(System.out::println);
    }

    @GetMapping("sub6")
    public void method6() {
        // 직원들의 생일 조회
        List<LocalDate> births = dao3.select6();
        System.out.println("births = " + births.size());
    }

    @GetMapping("sub7")
    public void method7() {
        // 상품의 가격들 조회
        List<Double> priceList = dao3.select7();
        System.out.println("priceList = " + priceList.size());
    }
    @GetMapping("sub8")
    public void method8() {
        // 상품의 가격들 조회
        Map<String, Object> row = dao3.select8();
        System.out.println("row = " + row);
    //map에 keyvalue entry는 순서가 보장되지 않는다.
    }
    @GetMapping("sub9")
    public void method9() {
        // 상품명, 가격, 카테고리 명 조회
        Map<String, Object> map = dao3.select9();
        map.entrySet().forEach(System.out::println);
        }
    @GetMapping("sub10")
    public void method10(){
        MyDto19 dto = dao3.select10();
        System.out.println("dto = " + dto);

    }
    @GetMapping("sub11")
    public void method11(){
        MyDto20 dto = dao3.select11();
        System.out.println("dto = " + dto);

    }
    @GetMapping("sub12")
    public void method12(){
        MyDto21 dto = dao3.select12();
        System.out.println("dto = " + dto);
        //2번 고객의 id name, country
        //Mydto21의 property는 id name, country
//        System.out.println("dto = " + dto);

    }
}
//모델에 데이터를 넣을 때 java bean을 사용했는데
//컨트롤러와 서비스 사이에 자바빈으로
//자바빈 :