package com.example.spring20230920.domain;

import lombok.Data;

@Data
public class MyDto6 {
    private String name;
    private Integer age;

}
/*@Data는 다음을 포함하고 있음
lombok (google : Project Lombok )---MENU: Feature ---> Stable
All together now: A shortcut for @ToString, @EqualsAndHashCode, @Getter on all fields, and @Setter on all non-final fields, and @RequiredArgsConstructor!*/