package com.example.spring20230920.domain;

import lombok.Data;

import java.time.LocalDate;
@Data
public class MyDto33Employee {
    private Integer id;
    private String lastname;
    private String firstname;
    private String photo;
    private String note;
    private LocalDate birthdate;

}
