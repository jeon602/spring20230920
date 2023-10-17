package com.example.spring20230920;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

//다형성을 사용한 쿼리문
public class MyApp10 {
}
interface MyInterface1{
    //인터페이스가 구현한  myinterface   주입될 수 있는 스프링 빈은 후보가 2개.
//    스프링은 필드에 어떤것을 넣어줘야 하는지 읽지 못하므로 내가 적용해 줘야 한다 생성자를 직접 만들어서 주입된 빈에
//    쿼리 파이어라는 어노테이션으로 빈을 지정해 줘야 한다.


}
@Component
class MyClass19 implements MyInterface1{

}
@Component  //생성자를 통해
class MyClass18 implements MyInterface1{
    //클래스로 만든 인스턴스가 있어야 함.
}
@Component
class MyClass17{
    private final MyInterface1 field;
    public  MyClass17(@Qualifier("myClass18")MyInterface1 field){
        this.field = field;
    }


}