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
    private List<String> countries;
    private String configuration;
    
    public User() {
    }
    
    public User(String name, String surname, String[] countries, String configuration) {
        this.name = name;
        this.surname = surname;
        if (countries != null) this.countries = Arrays.asList(countries);
        this.configuration = configuration;
        
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

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public List<String> getCountries() {
        return countries;
    }

    public void setCountries(List<String> countries) {
        this.countries = countries;
    }

    public String getConfiguration() {
        return configuration;
    }

    public void setConfiguration(String configuration) {
        this.configuration = configuration;
    }
}
