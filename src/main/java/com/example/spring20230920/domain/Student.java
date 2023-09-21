package com.example.spring20230920.domain;

public class Student {
    //email property 읽기 쓰기 ====ㅣ> 겟 메일을 지우면 쓰기만 가능해진다. get은 읽기용 set은 쓰기용
    //information property 읽기 쓰기

    private String email;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    private String info;

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }
}
/*public class Student {
    // email property (쓰기)
    // information property (읽기, 쓰기)
    private String email;
    private String info;

//    public String getEmail() {
//        return email;
//    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getInformation() {
        return info;
    }

    public void setInformation(String info) {
        this.info = info;
    }
}
*/