/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.khomik.mavenproject3;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ПК
 */
public class Store {
    private static Store storeInstanse = new Store();
    private static List<Data> dataStore;
    
    private Store(){
        dataStore = new ArrayList<>();
        dataStore.add(new Data(0, "Bohdan", 19,"films", "fantastic"));
    }
    
    public static Store getInstanse(){
    return storeInstanse;
    }
    
    public static List<Data> getStore(){
    return dataStore;
    }
}
