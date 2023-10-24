package com.example.spring20230920.domain;

import lombok.Data;

import java.util.List;
import java.util.Map;

@Data
public class MyDto42 {
    private String city;
    private Integer age;
    private boolean married;
    private String car;
    private Map<String,Object> home;
    private List<String> food;


}
