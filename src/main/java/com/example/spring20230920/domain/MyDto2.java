package com.example.spring20230920.domain;

public class MyDto2 {
    //name - 문자열
    //address
    //birthDate
    //signed property -논리형

    private String name;
    private String address;
    private String birthdate;
    private Boolean signed;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public Boolean isSigned() {
        return signed;
    }

    public void setSigned(Boolean signed) {
        this.signed = signed;
    }
}

//구글 ㅣlombok -----> feature stable : 인텔리제이는 이미 lombok이 딸려 있다.

