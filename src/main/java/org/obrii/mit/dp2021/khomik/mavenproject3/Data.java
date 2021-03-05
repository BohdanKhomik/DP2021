/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.khomik.mavenproject3;
import java.util.Arrays;
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



    public Data() {
    }

    public Data(int id, String name, int age, String test, String ganre) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.test = test;
        this.test = ganre;
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
    
    public String getTest() {
        return test;
    }

    public void setTest(String test) {
        this.test = test;
    }
    public String getGanre() {
        return ganre;
    }

    public void setGanre(String ganre) {
        this.ganre = ganre;
    }
    
    

    
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Data{id=").append(id);
        sb.append(", name=").append(name);
        sb.append(", age=").append(age);
        sb.append('}');
        return sb.toString();
    }
    
}
