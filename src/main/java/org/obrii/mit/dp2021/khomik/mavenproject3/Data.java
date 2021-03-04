/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.khomik.mavenproject3;

import java.io.Serializable;

/**
 *
 * @author 38068
 */
public class Data implements Serializable{
    
    private int id;
    private String name;
    private int age;
    private String test;
    private String ganre;
    private int i0;

    public String getGanre() {
        return ganre;
    }

    public void setGanre(String ganre) {
        this.ganre = ganre;
    }

    public Data() {
    }

    public Data(int id, String name, int age, String test, String ganre) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.test = test;
        this.test = ganre;
    }

    public String getTest() {
        return test;
    }

    public void setTest(String test) {
        this.test = test;
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

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "Data{" + "id=" + id + ", name=" + name + ", age=" + age + ", test=" + test + ", ganre=" + ganre + '}';
    }
    
}
