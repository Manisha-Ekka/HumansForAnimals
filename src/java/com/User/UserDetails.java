/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.User;

/**
 *
 * @author asus
 */
public class UserDetails {
    private String name;
    private String email;
    private String password;
    private String gender;

    public UserDetails() {
        super();
    }
    
    public UserDetails(String name, String email, String password, String gender){
        super();
        this.name=name;
        this.email=email;
        this.password= password;
        this.gender= gender;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
}
