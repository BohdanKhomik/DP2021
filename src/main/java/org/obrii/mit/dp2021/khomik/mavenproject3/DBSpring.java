/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ПК
 */
package org.obrii.mit.dp2021.khomik.mavenproject3;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.lang.Iterable;
import org.apache.commons.collections4.IterableUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class DBSpring {
      
     @Autowired
    SpringInterface DBInterface;
    
    public DBSpring(){
    }
    
    public Iterable<Data> readData(){
        return DBInterface.findAll();
    }
    
            
    public ArrayList<Data> sortData(String s){
        Iterable<Data> data = DBInterface.findAll();
        Iterator<Data> iterator = data.iterator();
        ArrayList<Data> newData = new ArrayList<Data>();

        while(iterator.hasNext()){
            Data item = iterator.next();
            if(item.getName().contains(s)){
                newData.add(item);
            }
        }
        return newData;
    }
    
    public void createData(Data data){
        DBInterface.save(data);
    }
    
    public void deleteData(Integer id){
        DBInterface.deleteById(id);
    }
    
    public void updateData(Data data,Integer id){
        Data update = DBInterface.findById(id).get();
        update.setName(data.getName());
        update.setAge(data.getAge());
        update.setTest(data.getTest());
        update.setGanre(data.getGanrel());
        DBInterface.save(update);
    }
 }
