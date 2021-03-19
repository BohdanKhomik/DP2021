/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.khomik.mavenproject3;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author ПК
 */


public class PostgressConnection {
    
    private Logger logger;
    private Statement statement;
    private Connection connections;
    int id=1;
    public PostgressConnection() {
        try {
            Class.forName("org.postgresql.Driver");
            this.connections = DriverManager.getConnection("jdbc:postgresql://obrii.org:5432/db2021mit21s18", "s18", "7803");
            this.connections.setAutoCommit(false);
            this.statement = this.connections.createStatement();
        } 
        catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName()+": "+e.getMessage());
            System.exit(0);
        }
        PostgresSQL("CREATE TABLE IF NOT EXISTS userInfo ("
                        + "id integer primary key not null, "
                        + "name text not null, "
                        + "age integer not null, "
                        + "test text not null, "
                        + "ganre text not null "
                        + ");");
  
    }
   
    public void PostgresSQL(String info){
        try{
            statement.executeUpdate(info);
            connections.commit();
        }
        catch(SQLException e){
             logger.log(Level.WARNING, null, e);
        }
    }
    
    public List<Data> readData() {
        try {
            ResultSet result = this.statement.executeQuery("SELECT * FROM userInfo");
            List<Data> data = new ArrayList<>();

            while (result.next()) {
                data.add(new Data(
                        result.getInt("id"),
                        result.getString("name"),
                        result.getInt("age"),
                        result.getString("test"),
                        result.getString("ganre")
                ));
            }

            return data;
        } 
        catch (SQLException e) {
            this.logger.log(Level.WARNING, e.toString());
            return new ArrayList<>();
        }
        
    }

    public void createData(Data data) {
        List<Data> datasize = this.readData();
        if(datasize.size()==0){
            id=1;
        }
        data.setId(this.id);
        id=id+1;
        PostgresSQL(String.format("INSERT INTO userInfo (id, name, age, test, ganre) VALUES (%d, '%s', %d, '%s', '%s');",
                data.getId(), data.getName(), data.getAge(), data.getTest(), data.getGanre()));
    }

    public void deleteData(int id) {        
        PostgresSQL("DELETE FROM userInfo WHERE id=" + id);
    }
    
    public void updateData(int id, Data data) {  
        PostgresSQL(String.format("UPDATE userInfo "
                        + "SET name='" + data.getName() + "' , "
                        + "age=" + data.getAge() + " , "
                        + "test='" + data.getTest() + "' , "
                        + "ganre='" + data.getGanre() + "' "
                + "WHERE id="+id)
        );
    }
    
    public List<Data> searchData(String phrase) {
        List<Data> newData = new ArrayList<>();
        for (Data d : this.readData()) {
            if(d.getName().contains(phrase)){
                newData.add(d);}
        }
            return newData;
    }
    
}
