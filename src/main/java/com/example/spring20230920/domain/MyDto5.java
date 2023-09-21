package com.example.spring20230920.domain;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
@NoArgsConstructor
//@RequiredArgsConstructor //
@AllArgsConstructor //파이널이든 아니든 모두 받는다.

public class MyDto5 {

    private String name;
    private Integer age;

}
