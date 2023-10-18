package com.example.spring20230920.domain;

public class MyDto30 {
    private String keyword;

    public String getKeyword(){
        if(keyword == null) {
            return "%%";
        }
        return "%" + keyword + "%";

    }
}
