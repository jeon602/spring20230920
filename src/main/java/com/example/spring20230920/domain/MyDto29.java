package com.example.spring20230920.domain;

public class MyDto29 {
    private Integer page;
    private Integer rows;
    public Integer getFrom() {return (page -1) * rows;
    }
}