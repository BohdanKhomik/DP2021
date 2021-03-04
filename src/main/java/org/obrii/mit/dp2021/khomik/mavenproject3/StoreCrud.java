/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.khomik.mavenproject3;
import java.util.List;

/**
 *
 * @author ПК
 */
public class StoreCrud implements DataCrudInterface {
    private List<Data> dataList = Store.getStore();

    public StoreCrud() {
    }
   
    @Override
    public void createData (Data data){
    data.setNumber(dataList.size());
    dataList.add(data);
    }
    
    @Override
    public List<Data> readData(){
    return dataList;
    }
    
    @Override
    public void updateData(int number, Data data){
    data.setNumber(number);
    dataList.set(number, data);
    }
    
    @Override
    public void deleteData(int number){
        dataList.remove(number);
    }
}
