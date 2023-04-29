package kr.smart.entity;

import lombok.Data;

@Data
public class Member {
    private int id;
    private String username;
    private String password;
    private String name;
    private String email;
}
