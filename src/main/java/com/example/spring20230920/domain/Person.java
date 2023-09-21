package com.example.spring20230920.domain;

public class Person {

    //name property 읽기 쓰기 가능
    //age property 읽기 쓰기 가능
    //address property 읽기 쓰기 가능
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private String name;
    private Integer age;

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    private String address;

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }
}
