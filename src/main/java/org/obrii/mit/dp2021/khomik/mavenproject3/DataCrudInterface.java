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
public interface DataCrudInterface {

    void createData(Data data);

    void deleteData(int number);

    List<Data> readData();

    void updateData(int number, Data data);
    
}
