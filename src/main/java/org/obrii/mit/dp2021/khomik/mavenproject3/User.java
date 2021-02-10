/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.khomik.mavenproject3;

import java.util.Arrays;
import java.util.List;

/**
 *
 * @author ПК
 */
public class User {
    
    
    private int id;
    private String name;
    private String surname;
    private String email;
    private String gender;
    private String day;
    private String month;
    private String year;    
    public User() {
    }
    
    public User(String name, String surname,String email,String gender, String day, String month,String year) {
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.day = day;
        this.month = month;
        this.year = year;
        this.gender = gender;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }
    
    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }
    
    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }
    

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }
}
