package com.example.spring20230920.domain;

public class MyDto1 {
    //property명   /property 명은 getset을 지우고 소문자로 한다
    //name property
    //homeAddress property



    //boolean type property : get메소드의 경우 get대신 is 가능
    //set 값 할당.
    //get 값을 받을 때

    private String name;
    private String homeAddress; //카멜 표기법
    private String MYHOME;
    private Boolean married;
    private Boolean checked;

    public Boolean isChecked() {
        return checked;
    }

    public void setChecked(Boolean checked) {
        this.checked = checked;
    }

    private Boolean getMarried;
    //필드의 타입이 boolean의 경우 get set 메소드는 getMarried도 가능, isMarried도 가ㄴ,ㅇ
//대문자
    public String getMYHOME() {
        return MYHOME;
    }

    public void setMYHOME(String MYHOME) {
        this.MYHOME = MYHOME;
    }

    public String getHomeAddress() { //property 명은 getset을 지우고 소문자로 한다
        return homeAddress;
    }

    public void setHomeAddress(String homeAddress) {
        this.homeAddress = homeAddress;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
