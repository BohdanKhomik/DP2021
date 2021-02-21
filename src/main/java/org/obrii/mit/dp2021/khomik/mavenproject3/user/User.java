/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.khomik.mavenproject3.user;

import java.util.Arrays;
import java.util.List;

/**
 *
 * @author ПК
 */
public class User implements UserInterface {

    private String name;

    public User(String name) {
        this.name = name;
    }

    public User(int number) {
        this.name = "User" + number;
    }

    @Override
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Username: " + this.name;
    }
}
