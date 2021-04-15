/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.fit.mit.KhomikSpring.Domain;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


/**
 *
 * @author ПК
 */
@Entity
public class User implements Serializable{
    
@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    
    private String name;
  
    private String email;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    private String test;
    

    private String ganre;
    

    private String actor;

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }
    
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
        sb.append(", test=").append(test);
        sb.append(", ganre=").append(ganre);
        sb.append('}');
        return sb.toString();
    }
    
}
