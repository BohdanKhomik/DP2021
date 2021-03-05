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
public interface CrudDataInterface {

    void createData(Data addingData);

    List<Data> readData();

    void updateData(int id, Data data);

    void deleteData(int id);

    void writeData(List<Data> data);
    
    public List<Data> sortData(String phrase);

}