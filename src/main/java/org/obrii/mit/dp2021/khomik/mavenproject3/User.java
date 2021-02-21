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
public class User implements UserInterface {

    private String name;
    private String age;
    private String test;
    private String ganre;

    public User() {
    }
    
    
    public User(String name, String age, String test, String ganre) {
        this.name = name;
        this.age = age;
        this.test = test;
        this.ganre = ganre;
    }

    @Override
    public String getName() {
        return name;
    }

    @Override
    public void setName(String name) {
        this.name = name;
    }
    
    @Override
    public String getAge() {
        return age;
    }

    @Override
    public void setAge(String age) {
        this.age = age;
    }
    @Override
    public String getTest() {
        return test;
    }

    @Override
    public void setTest(String test) {
        this.test = test;
    }
    @Override
    public String getGanre() {
        return ganre;
    }
    @Override
    public void setGanre(String ganre) {
        this.test = ganre;
    }

    
    @Override
    public String toString() {
        return "User{" + "name=" + name + ", age=" + age + ", test=" + test + ", ganre=" + ganre + '}';
    }
}
