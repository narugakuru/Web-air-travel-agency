package com.raisei.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private int UserId;
    private String account;
    private String password;
    private String name;
    private String phone;
    private String sex;
    private Integer age;
}
